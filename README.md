# README

Setup instruction

* docker-compose build

* docker-compose run --rm web bundle -j4

* docker-compose run --rm web rails db:create

* docker-compose up

To generate proto files

* docker-compose run --rm web ./bin/generate_protos.sh