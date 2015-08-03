# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

budapest = Place.create(location: "Budapest, Hungary", photo_url: "http://static1.squarespace.com/static/51c946cde4b0f05142538988/5278a958e4b085eb5a855185/5431c522e4b0f8919ed7d21b/1412548479167/?format=1500w", note: "Make sure to visit the hot baths!", user_id: 1)
prague = Place.create(location: "Prague, Czech Republic", photo_url: "http://i.huffpost.com/gen/1782474/thumbs/o-PRAGUE-900.jpg?1", note: "Finish reading 'The Unbearable Lightness of Being' while here.", user_id: 1)

tokyo = Place.create(location: "Tokyo, Japan", photo_url: "http://i.ytimg.com/vi/Y4apM0XHxwo/maxresdefault.jpg", note: "Make sure to get a nice AirBnB.", user_id: 1)

bakue = Place.create(location: "Baku, Azerbaijan", photo_url: "http://assets4.howtospendit.ft-static.com/images/13/d6/46/13d64643-9832-4c45-b1c5-35438d4381e5_seven_hundred.jpg", note: "Definitely check out the Flame Towers.", user_id: 1)

assiniboine = Place.create(location: "Mount Assiniboine, Canada", photo_url: "http://rogerhostin.com/_Media/web_2011_09_26_untitled_31.jpeg", note: "This place looks absolutely gorgeous.", user_id: 1)

hanging_lake = Place.create(location: "Hanging Lake, Colorado", photo_url: "https://c2.staticflickr.com/8/7129/7657893354_0402caec07_b.jpg", note: "I wonder if you could swim here?", user_id: 1)

# Places.create(location: "", photo_url: "", note: "")