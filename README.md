# cto-csoc-poc

Proof of concept delivered by Home Office CTO of a couple of tools used by the CSOC team running in ACP

## Tools included

- [huginn](https://github.com/huginn/huginn)
  - postgres
  - huginn worker
  - huginn web service

- [yeti](https://github.com/yeti-platform/yeti)
  - yeti web service
  - mongo
  - redis
  - various yeti workers

Deployed using [Drone](https://drone.acp.homeoffice.gov.uk/UKHomeOffice/cto-csoc-poc)

## In order to make this production viable

- Make mongo highly available
- Make postgres highly available
- Make redis highly available
- Horizontal Pod Autoscaling for yeti workers
- Increase scaling limit of services
- Reduce requests and limits of resources to what they need to be
- Find a way of carrying out liveliness checks on yeti and huginn workers
- Remove o365 keycloak access
- Disable auth in Yeti & Huginn since keycloak is providing it
- Provide a route for MISP to connect to yeti either bypassing Keycloak or use the [Keycloak Gatekeeper](https://github.com/keycloak/keycloak-gatekeeper) as a forward proxy.
