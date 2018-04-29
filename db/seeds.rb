# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

world_cup_teams = ['Russia', 'Uruguay', 'Egypt', 'Saudi Arabia',
    'Portugal', 'Spain', 'Iran', 'Morocco',
    'France', 'Peru', 'Denmark', 'Australia',
    'Argentina', 'Croatia', 'Iceland', 'Nigeria',
    'Brazil', 'Switzerland', 'Costa Rica', 'Serbia',
    'Germany', 'Mexico', 'Swedan', 'South Korea',
    'Belgium', 'England', 'Tunisia', 'Panama',
    'Poland', 'Colombia', 'Senegal', 'Japan']

puts 'IMPORTING WORLD CUP TEAMS'
world_cup_teams.each do |t|
    new_team = Team.find_or_create_by(name: t)
    puts 'IMPORTED: ' << new_team.name
end