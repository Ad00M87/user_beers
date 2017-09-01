user = User.first

20.times do
  user.beers.create(name: Faker::Beer.name, style: Faker::Beer.style,
                    ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol)
end

puts "Beers Seeded For First User!"
