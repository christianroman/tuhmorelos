# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

destinations = [
    [1, 'Cuernavaca'],
    [2, 'Tepoztlan'],
    [3, 'Cuautla'],
    [4, 'Tequesquitengo'],
    [5, 'Oaxtepec']
]

destinations.each do |id, name|
    Destination.create( id:id, name:name )
end
