Infrastructure
=====

That is a project to collect or write some compose file for docker use by the command : ``docker-compose``.
This project contain a Dockerfile and Caddyfile that allow docker to access internet by reverse proxy with tls and http2.


How to use :
----

First install package docker-compose

on Arch Linux :

``yaourt -S docker-compose``

Now launch one instance :

``[sudo] docker-compose -d -f file.yml up``

* -d : is launch as daemon
* -f : load file.yml

sudo is not a obligation if you are in docker group

For stop an instance :

``[sudo] docker-compose -f file.yml down``

Order for launch :
-----

- portfolio
- deluge
- sickrage (depend deluge)
- couchpotato (depend deluge)
- mariadb
- owncloud (depend mariadb)
- caddy (depends all except mariadb)

in order increasing

or launch all.yml
