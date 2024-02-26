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
                org = as.factor(org))
  

# plots
library(ggplot2)
r102 |> 
  tidyr::pivot_longer(tidyselect::starts_with("select_workshops___"), names_to = "session", values_to = "registered") |> 
  # clean up
  dplyr::mutate(session = gsub(x=session, pattern = "select_workshops___", replacement = ""),
                session = factor(session, levels = c("mar", "apr", "may", "jun"))) |> 
  dplyr::filter(registered == 1) |> 
  dplyr::count(session)

r102 |> 
  tidyr::pivot_longer(missing_values:ggplot2, names_to = "skill", values_to = "rating") |> 
  ggplot(aes(x = rating, fill = skill)) + 
  geom_histogram(bins = 4, show.legend = FALSE) + 
  facet_wrap(~skill) + 
  theme_classic()
