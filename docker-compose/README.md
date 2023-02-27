# Docker-compose setup

This is my current setup defined as a set of `docker-compose.yml` files. Each service has its own directory and associated `docker-compose.yml` file.


I use Traefik as the edge-router for my system, with automatic configuration discovery through Docker container labels.

Very much still a work in progress.

## Services

* [Synapse](https://matrix.org/docs/projects/server/synapse) (a Matrix server for decentralized communication).
* [Joplin](https://joplinapp.org/) Server (a synchronization server for Joplin, a note-taking app).
* [Miniflux](https://miniflux.app/) (a minimalistic RSS reader).
* [Vikunja](https://vikunja.io/) (an open-source Todoist clone).
* [Mealie](https://mealie.io/) (a recipe manager).

## Requirements

Each service requires a set of environment variables to be set, for sensitive info such as passwords and hostnames.

The Synapse server furthermore requires a `homeserver.yaml` file.

The setup also expects a `traefik` Docker network to be available as an external network, to tie the services together.
