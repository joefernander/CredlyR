## CredlyR

`CredlyR` is an R package designed to interface with the [Credly API](https://www.credly.com/docs/web_service_api).

### Installation

You can install CredlyR from GitHub with:

``` r
devtools::install_github("joefernander/CredlyR")
```

### API Key & Organization ID

The Credly API depends on usage of an API key and your unique organization Id. The API key and organization Id are set as environmental variables using:

``` r
# Set Credly API Key
credly_api_key("YOUR-API-KEY")

# Set Credly Organization Id
credly_organization_id("YOUR-ORGANIZATION-ID")
```

These functions only create environmental variables that persist during your current R session. Users should edit their `.Renviron` file for long-term access.

``` R
# Edit .Renviron file
file.edit("~/.Renviron")
```

``` R
# Credentials 
Credly_API_Key = "YOUR-API-KEY"
Credly_ORG_ID = "YOUR-ORGANIZATION-ID"
```

### Get Badge Templates

One the API key and organization ID are set, the `get_badge_templates()` function will return a dataframe of all of the badges created in Credly with award statistics.

``` R
df <- get_badge_templates()
```

### Get Issued Badges

One the API key and organization ID are set, the `get_issued_badges()` function will return a dataframe of all of the badges awarded in the organization.

``` r
# Return all badges as a dataframe

df <- get_issued_badges()
```
