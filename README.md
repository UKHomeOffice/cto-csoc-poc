# cto-csoc-poc

Proof of concept delivered by Home Office CTO of a couple of tools used by the CSOC team running in ACP

Tools included
  - [huggin](https://github.com/huginn/huginn)
    - postgres
    - huggin worker
    - huggin web service

  - [yeti](https://github.com/yeti-platform/yeti)
    - yeti web service
    - mongo
    - redis
    - various yeti workers

## TODO:

- [ ] determine and set meaningful memory+cpu requirements for:
  - [ ] huggin web
  - [ ] huggin worker
  - [ ] huggin postgres
  - [ ] yeti web
  - [ ] yeti analytics
  - [ ] yeti beat
  - [ ] yeti exports
  - [ ] yeti feeds
  - [ ] yeti oneshot
  - [ ] yeti uwsgi-http
  - [ ] yeti uwsgi
  - [ ] yeti mongodb
  - [ ] yeti redis
- [ ] get persistent volumes working for:
  - [ ] yeti redis (?)
  - [ ] yeti mongodb
  - [ ] huggin postgres
- [ ] stop huggin having to pull all its dependencies everytime it starts
- [ ] add keycloak proxy
  - [ ] huggin
  - [ ] yeti  
- [ ] configure to use keycloak provided user auth
  - [ ] huggin
  - [ ] yeti  
- [ ] configure keycloak realm
- [ ] add naxsi proxy
  - [ ] huggin
  - [ ] yeti  
- [ ] network policies
  - [ ] huggin
  - [ ] yeti  
- [ ] services
  - [x] huggin-web
  - [x] huggin-postgres
  - [x] yeti-web
  - [x] yeti-redis
  - [x] yeti-mongo
- [ ] Horizontal pod autoscaler
  - [x] yeti-web
  - [x] yeti-worker
  - [ ] huggin-web
  - [ ] huggin....
- [x] ingress
  - [x] yeti-web
  - [x] huggin-web
- [ ] add whitelist to ingress