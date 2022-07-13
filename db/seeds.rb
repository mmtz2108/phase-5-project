require "faker";

10.times do
 Actor.create(name: Faker::Name.name, age: Faker::Number.between(from: 20, to: 80), gender: Faker::Gender.binary_type )
end
puts "Actors seeded"

10.times do
    Genre.create(name: Faker::Emotion.noun )
end
puts "Genres made"

10.times do
Movie.create(name: Faker::Movie.title, release_year: Faker::Date.between(from: '2000-01-01', to: '2021-12-31'), actor_id: Actor.all.sample, genre_id: Genre.all.sample )

end 

puts "seeding done!"
