# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)


puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flat_1 = {  name: 'Light & Spacious Garden Flat London',
            address: '10 Clifton Gardens London W9 1DT',
            description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
            price_per_night: 75,
            number_of_guests: 3 }

flat_2 = {  name: 'cosy cottage in the highlands',
            address: 'Braemar, Scotland',
            description: 'wee cottage, at the centre of the Cairngorms mountain range',
            price_per_night: 82,
            number_of_guests: 2 }

flat_3 = {  name: 'seaside retreat',
            address: '10 Castle Avenue, Highcliffe',
            description: 'contemporary studio flat for easy access to the beach',
            number_of_guests: 4 }

flat_4 = {  name: 'fancy flat in Edinburgh',
            address: '10 Castle Mews, Liberton',
            description: 'A great spot to base yourselves for the Edinburgh Fringe',
            number_of_guests: 6}


[flat_1, flat_2, flat_3, flat_4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
