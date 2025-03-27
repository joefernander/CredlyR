## CredlyR

`CredlyR` is an R package designed to interface with the [Credly API](https://www.credly.com/docs/web_service_api){target="_blank"}.

### Installation

You can install CredlyR from GitHub with:

``` R
devtools::install_github("joefernander/CredlyR")
```

### API Key & Organization ID

The Credly API depends on usage of an API key and your unique organization Id. The API key and organization Id are set as environmental variables using:

-   `credly_api_key(x)`

-   `credly_organization_id(x)`

### Get Badges

One the API key and organization ID are set, the `get_badges()` function will return a dataframe of all of the badges awarded in the organization.
