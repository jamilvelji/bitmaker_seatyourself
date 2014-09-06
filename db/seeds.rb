# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

Restaurant.create(name: "Pai Northern Thai Kitchen", address: "18 Duncan St, Toronto, ON", user_id: 1, food_type: "Thai", price: "5 - 15", website: "http://www.paitoronto.com", hours: "11:30AM - 10PM, Mon - Sat")

Restaurant.create(name: "Frijoles", address: "3465 Portage Rd, Niagara Falls, ON", user_id: 1, food_type: "Mexican", price: "5 - 15", website: "http://www.frijolesfreshmex.com", hours: "11AM - 8PM, Mon - Fri")

Restaurant.create(name: "Bitmaker Cafe", address: "220 King St W, Toronto, ON", user_id: 1, food_type: ‘Coffee", price: ‘0 - 5", website: ‘http://www.bitmakerlabs.com", hours: "6AM - 10PM, Mon - Sun")