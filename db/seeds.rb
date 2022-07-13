require "faker";
actors = []
10.times do
    actors.push( Actor.create!(name: Faker::Name.name, age: Faker::Number.between(from: 20, to: 80), gender: Faker::Gender.binary_type ))
end

genres = []
10.times do
    genres.push( Genre.create!(name: Faker::Emotion.noun ))
end

10.times do

   movies = Movie.create!(name: Faker::Name.name, release_year: Faker::Date.between( from: 20.years.ago, to: Date.today ))

end 
