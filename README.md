My Gwen Project
===============

## Docker with browserstack

* `docker build -t ttl.sh/gwen:1d .`
* ` docker run --env BROWSERSTACK_USERNAME=<username> --env BROWSERSTACK_ACCESS_KEY=<access_key> --env NO_COLOR=1  ttl.sh/gwen:1d`

## Docker compose in VM or Local

* `docker compose -f gwen/docker-compose.yml build`

* `docker compose -f gwen/docker-compose.yml run gwen`

## Helm Chart

* `docker build -t ttl.sh/gwen:1d .`
* `docker push ttl.sh/gwen:1d`
* `helm install gwen-chart gwen-chart --set browserstackUsername=<username> --set browserstackAccessKey=<access_key>`


