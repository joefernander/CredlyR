## CredlyR

`CredlyR` is an R package designed to interface with the [Credly API](https://www.credly.com/docs/web_service_api).

### Installation

You can install CredlyR from GitHub with:

``` R
devtools::install_github("joefernander/CredlyR")
```

### API Key & Organization ID

The Credly API depends on usage of an API key and your unique organization Id. The API key and organization Id are set as environmental variables using:

``` R
# Set Credly API Key
credly_api_key("YOUR-API-KEY")

# Set Credly Organization Id
credly_organization_id("YOUR-ORGANIZATION-ID")
```

### Get Badges

One the API key and organization ID are set, the `get_badges()` function will return a dataframe of all of the badges awarded in the organization.

``` R
# Return all badges as a dataframe

df <- get_badges()
```
