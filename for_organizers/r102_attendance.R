# API tokens stored in .Renviron https://cran.r-project.org/web/packages/httr/vignettes/secrets.html#environment-variables

# pull data from redcap
r102_formData <- list("token"=Sys.getenv("R102_registration_65259"),
                          content='record',
                          action='export',
                          format='csv',
                          type='flat',
                          csvDelimiter='',
                          rawOrLabel='raw',
                          rawOrLabelHeaders='raw',
                          exportCheckboxLabel='false',
                          exportSurveyFields='true',
                          exportDataAccessGroups='false',
                          returnFormat='json'
)
r102_response <- httr::POST("https://redcap.chop.edu/api/", body = r102_formData, encode = "form")
r102_raw <- httr::content(r102_response, show_col_types = FALSE)

# data cleaning
r102 <- r102_raw |> 
  # make email lower case
  dplyr::mutate(email = tolower(email)) |> 
  # extract organization from email address
  tidyr::extract(email, into = "org", 
                 regex = "[^@]+@(.*)[.]edu", 
                 remove = FALSE) |> 
  # clean up org categories
  dplyr::mutate(org = dplyr::case_when(grepl(x=org, pattern = "chop") ~ "CHOP",
                                       grepl(x=org, pattern = "upenn") ~ "Penn",
                                       TRUE ~ "Other"),
                org = as.factor(org)) |> 
  # clean up dates
  dplyr::mutate(date = lubridate::ymd_hms(form_1_timestamp))
  

# get a list of emails to paste into outlook for forwarding event invite: 
r102 |> 
  dplyr::filter(select_workshops___jun == 1, date > lubridate::ymd_hms("2021-05-06 11:45:00")) |> 
  dplyr::pull(email) |> 
  unique() |> 
  paste0(collapse = "; ")


# counts
r102 |> 
  tidyr::pivot_longer(tidyselect::starts_with("select_workshops___"), names_to = "session", values_to = "registered") |> 
  # clean up
  dplyr::mutate(session = gsub(x=session, pattern = "select_workshops___", replacement = ""),
                session = factor(session, levels = c("mar", "apr", "may", "jun"))) |> 
  dplyr::filter(registered == 1) |> 
  dplyr::count(session)

# plots
library(ggplot2)
r102 |> 
  tidyr::pivot_longer(missing_values:ggplot2, 
                      names_to = "skill", 
                      values_to = "rating") |> 
  dplyr::mutate(rating = as.factor(rating)) |> 
  dplyr::select(record_id, skill, rating) |> 
  na.omit() |> 
  ggplot(aes(y = rating, fill = skill)) + 
  geom_bar(show.legend = FALSE) +  
  facet_wrap(~skill, ncol = 1) + 
  theme_classic() + 
  scale_y_discrete(breaks = as.character(1:4), 
                   labels = c("(1) I wouldn't know where to start",
                              "(2) I could struggle through,\nbut not confident I could do it",
                              "(3) I could probably do it\nwith some trial and error",
                              "(4) I am confident in my ability to do it")) + 
  labs(x=NULL, y=NULL,
       title = paste0("Signups as of ", Sys.Date()))
ggsave("for_organizers/ability_plots.png", height = 10, width = 5, units = "in")


workshop_dates <- lubridate::ymd_hms(c("2024-03-04 12:00:00", "2024-04-08 12:00:00", "2024-05-06 12:00:00", "2024-06-03 12:00:00"))

r102 |> 
  tidyr::pivot_longer(tidyselect::starts_with("select_workshops___"), 
                      names_to = "session", 
                      values_to = "registered") |> 
  # clean up
  dplyr::mutate(session = gsub(x=session, pattern = "select_workshops___", replacement = ""),
                session = factor(session, levels = c("mar", "apr", "may", "jun"))) |> 
  dplyr::select(date, session, registered) |> 
  dplyr::filter(registered == 1) |> 
  dplyr::arrange(date) |> 
  dplyr::group_by(session) |> 
  dplyr::mutate(signups = cumsum(registered)) |> 
  ggplot(aes(x=date, y=signups, color = session)) + 
  geom_vline(xintercept = workshop_dates, linetype = 2, alpha = .7) + 
  geom_line() + 
  theme_classic() + 
  labs(x=NULL, title = "R102 signups over time", subtitle = "Dashed lines are workshop dates")
ggsave("for_organizers/signups_over_time.png", height = 5, width = 5, units = "in")
