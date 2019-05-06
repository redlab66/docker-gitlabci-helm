
# Helm docker image (for Gitlab CI)

[![](https://images.microbadger.com/badges/version/redfabriq/gitlabci-helm.svg)](https://microbadger.com/images/redfabriq/gitlabci-helm "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/redfabriq/gitlabci-helm.svg)](https://microbadger.com/images/redfabriq/gitlabci-helm "Get your own image badge on microbadger.com")

This image can be used in Gitlab CI to perform helm operations.

## Usage examples 

### Package your helm chart

> Addmiting you have an home-made helm chart you want to package to send to a private (or public) helm registry.

In your `.gitlab-ci.yml` file, add the following job :  

```yaml
stages:
 - package

package:
  stage: package
  image: redfabriq/gitlabci-helm:latest
  script:
    - helm package --save=false .
  artifacts:
    paths:
      - "*.tgz"
```

The helm chart will be generated as artifact (And can be sent to a registry in a next job)
