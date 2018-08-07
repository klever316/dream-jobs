# Dream Jobs

Find your dream job!

Application designed to unify multiple job openings in one place.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have docker and docker-compose installed

```
For more information, please see https://docs.docker.com/install/ 
```

### Installing

Access the project folder in your terminal enter the following

```
$ docker-compose build
```

```
$ docker-compose run --rm app bundle install
```

```
$ docker-compose run --rm app bundle exec rails db:create
```

```
$ docker-compose run --rm app bundle exec rails db:migrate
```

After that for test the installation enter the following to up the server

```
$ docker-compose up
```

Open your browser and access localhost:3000 to see the home page

## Running the tests

To run the tests run the following in your terminal

```
$ docker-compose run --rm app bundle exec rspec
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [Materialize](https://github.com/mkhairi/materialize-sass) - The css framework used
* [Redis](https://redis.io/) - Used to generate a database of schedule jobs
* [Sidekiq](https://github.com/mperham/sidekiq) - Used to process the schedule jobs
* [Sidekiq-scheduler](https://github.com/moove-it/sidekiq-scheduler) - Used to schedule sending emails and job search on the web
* [PostgreSQL](https://www.postgresql.org/) - SGDB
* [PgSearch](https://github.com/Casecommons/pg_search) - Used to make full text search on database
* [MailCatcher](https://mailcatcher.me/) - Used to intercept the sended emails on development environment

## Authors

* **Ronaldo Carneiro da Silva Filho** - *Initial work* - [kikogamer](https://github.com/kikogamer)
* **Jholdy Damasceno** - *Initial work* - [jholdy](https://github.com/jholdy)
* **Klever** - *Initial work* - [klever316](https://github.com/klever316)
* **André Gonçalves Rodrigues** - *Initial work* - [andregr15](https://github.com/andregr15)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
