Infrastructure
=====

That is a project to collect or write some compose file for docker use by the command : ``docker-compose``.
This project contain some Dockerfile for running personnal docker.


Caddy Server
====

It's my personnal docker for running reverse proxy

base on caddy server

use in cli ``docker pull florentindubois/infrastructure:caddy``

Rainloop Server
====

It's a docker for run rainloop.

for more details go to (rainloop.net/docs)[http://www.rainloop.net/docs/]

use in cli ``docker pull florentindubois/infrastructure:rainloop``

h5ai
====

It's a docker for interface h5ai

use in cli ``docker pull florentindubois/infrastructure:h5ai``


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

or launch ``[sudo] docker-compose up`` in the directory
