# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

budapest = Place.create(location: "Budapest, Hungary", photo_url: "http://static1.squarespace.com/static/51c946cde4b0f05142538988/5278a958e4b085eb5a855185/5431c522e4b0f8919ed7d21b/1412548479167/?format=1500w", note: "Make sure to visit the hot baths!")
prague = Place.create(location: "Prague, Czech Republic", photo_url: "http://i.huffpost.com/gen/1782474/thumbs/o-PRAGUE-900.jpg?1", note: "Finish reading 'The Unbearable Lightness of Being' while here.")

tokyo = Place.create(location: "Tokyo, Japan", photo_url: "http://i.ytimg.com/vi/Y4apM0XHxwo/maxresdefault.jpg", note: "Make sure to get a nice AirBnB.")

# Places.create(location: "", photo_url: "", note: "")