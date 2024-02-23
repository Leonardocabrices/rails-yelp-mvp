# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
surprise_ingredient = { name: 'Surprise Ingredients', address: '1 Boundary St, Chinese E1 7JE', phone_number: '54782196', category:'chinese'}
palais_heureux = { name: 'Palais Heureux', address: '2 Boundary St, French E2 7JE', phone_number: '241578469', category:'french'}
rengoku_rolls = { name: 'Rengoku Rolls', address: '3 Boundary St, Japan E3 7JE', phone_number: '241578468', category:'japanese'}
belgian_wonder =  { name: 'Belgian Wonder', address: '4 Boundary St, Belgian E4 7JE', phone_number: '241578467', category: 'belgian'}
luiggi_pizza = { name: 'Luiggi Pizza', address: '5 Boundary St, Italy E5 7JE', phone_number: '241578466', category: 'italian'}

[surprise_ingredient, palais_heureux, rengoku_rolls, belgian_wonder, luiggi_pizza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
