# Place to Go

A Ruby on Rails app!

## Mockups

![The locations picker.](http://i.imgur.com/gO8nzsp.png)

![The personal locations directory.](http://i.imgur.com/d44JMaN.jpg)

## User Stories

- As a user, I want to be able to find new locations to travel to.
- As a user, I want to see pictures of places of these places to know if I want to go to them or not.
- As a user, I want to be able to add a location to my list of places to travel to.
- As a user, I want to be able to add pictures to locations I've personally gone to.

## ERD

**User**
- username
- password

user :has_many

**Locations**
- title
- photo_url
- user_id (foreign key)
- description (maybe)
- coordinates/ something for google maps integration (maybe)


