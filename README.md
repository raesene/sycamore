# Sycamore - Managing Deciduous Attack Trees

The goal of this application is to build on [Deciduous](https://www.deciduous.app/) to allow for trees to be created, edited and shared.

A sample installation of the application is available on [heroku](http://sycamore.pwndland.uk), but like any of this it's subject to rapid change, so don't put any content you care about up there :)

The code is a relatively simple Ruby on Rails 6 application, with the content of the attack trees stored in a model imaginatively called AttackTree.

## Authentication

When deployed to a rails "production" environment the application will look for two environment variables to set a username and password to protect any access to editing/updating/deleting of Attack Trees. SYCAMORE_USERNAME and SYCAMORE_PASSWORD. It's HTTP basic auth so do run over a TLS connection if you care about the creds you're using and the integrity of your attack trees.

## ToDo

- Add AuthN/AuthZ/User Management. At the moment it's single user with basic authentication, a user system would make it multi-user
- Clean up view code. There's three copies of the deciduous HTML in the views with slightly different content this needs cleaned up
- Add tests...

## Known issues

- After using the browser back button from an attack tree page, it needs a browser refresh to actually change the page.
