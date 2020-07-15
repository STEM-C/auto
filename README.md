# auto
GitHub actions that enable an automated CI/CD pipeline...

![Test](https://github.com/STEM-C/auto/workflows/Test%20all%20actions/badge.svg) ![Build](https://github.com/STEM-C/auto/workflows/Build%20all%20actions/badge.svg)
<br/>

## Review
Create and delete apps on a heroku pipeline
``` yaml
inputs:
  base:
    description: 'The base name of the app'
    required: true
  pipeline: 
    description: 'A heroku pipline id to add the new app to'
    required: true
  stage:
    description: 'A stage to add the app to'
    required: false
    default: 'development'
  token:
    description: 'API token of the heroku account'
    required: true
outputs:
  app_name: 
    description: 'The name of the app that is created'
  database_url:
    description: 'The postgresql url of the provisioned db'
```

