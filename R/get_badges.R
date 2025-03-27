get_badges <- function() {

  badges <- httr2::request(paste0('https://api.credly.com/v1/','organizations/',Sys.getenv("Credly_ORG_ID"),'/badges')) |>
    httr2::req_method('GET') |>
    httr2::req_headers(`Content-Type` = 'application/json') |>
    httr2::req_auth_basic(username = Sys.getenv("Credly_API_Key"), password = '') |>
    httr::req_perform()

  df <- badges |>
    httr2::resp_body_string() |>
    jsonlite::fromJSON(flatten = TRUE,simplifyDataFrame = TRUE)

  badge_earners <- df$data

  return(badge_earners)

}
