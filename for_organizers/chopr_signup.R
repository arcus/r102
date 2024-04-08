# API tokens stored in .Renviron https://cran.r-project.org/web/packages/httr/vignettes/secrets.html#environment-variables

# pull data from redcap
chopr_signup_form <- list("token"=Sys.getenv("CHOPR_signup_44957"),
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
chopr_signup <- httr::content(httr::POST("https://redcap.chop.edu/api/", body = chopr_signup_form, encode = "form"), 
                               show_col_types = FALSE) |> 
  # convert timestamps to date
  dplyr::mutate(date = lubridate::ymd_hms(email_signup_timestamp),
                date = lubridate::floor_date(date, unit = "day")) 


# PLOTS

library(ggplot2)

# get CHOP colors 
chop_blue <- "#41b6e6"
chop_darkblue <- "#005587"
chop_pink <- "#ed1f7f"
chop_green <- "#91a01e"
chop_brown <- "#786452"
chop_brown_text <- "#55473c"

# the dates workshops occurred
r101 <- lubridate::ymd(c("2021-11-10", "2022-02-17", "2022-10-13", "2022-12-16", "2023-08-16", "2023-12-12"))
r102 <- lubridate::ymd(c("2024-03-04", "2024-04-08", "2024-05-06", "2024-06-03"))

(base_plot <- chopr_signup |> 
  dplyr::filter(!is.na(date)) |> 
  dplyr::count(date) |> 
  dplyr::mutate(total = cumsum(n),
                date = as.Date(date)) |> 
  ggplot(aes(y=total, x=date)) + 
  geom_line(color = chop_pink, size = 2) + 
  labs(title="New CHOPR signups", 
       y=NULL, x=NULL) + 
  theme_classic() + 
  scale_x_date(date_breaks = "3 months", date_labels = "%b %Y") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))) 
ggsave("CHOPR_signups.png", width = 5, height = 5, units = "in")

base_plot + 
  labs(subtitle = "Light blue bars are R101, darkblue bars are R102") + 
  geom_vline(xintercept = r101,
             color = chop_blue,
             size = 2,
             alpha = .5) + 
  geom_vline(xintercept = r102,
             color = chop_darkblue,
             size = 2,
             alpha = .5)
ggsave("CHOPR_signups_with_workshops.png", width = 5, height = 5, units = "in")
