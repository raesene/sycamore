# Sycamore - Managing Deciduous Attack Trees

The goal of this application is to build on [Deciduous](https://www.deciduous.app/) to allow for trees to be created, edited and shared.

A sample installation of the application is available on [heroku](http://sycamore.pwndland.uk), but like any of this it's subject to rapid change, so don't put any content you care about up there :)

The code is a relatively simple Ruby on Rails 6 application, with the content of the attack trees stored in a model imaginatively called AttackTree

## ToDo

- Add AuthN/AuthZ/User Management. At the moment it's single user with no authentication, so anyone can manage any tree.
- Clean up view code. There's three copies of the deciduous HTML in the views with slightly different content this needs cleaned up
- Add tests...
