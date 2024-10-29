Director.destroy_all
Genre.destroy_all
Movie.destroy_all

director1 = Director.create!(name: 'Francis Ford Coppola')
director2 = Director.create!(name: 'Frank Darabont')

genre1 = Genre.create!(name: 'Crime')
genre2 = Genre.create!(name: 'Drama')

Movie.create!(title: 'The Godfather', release_date: '1972-03-24', director: director1, genre: genre1)
Movie.create!(title: 'The Green Mile', release_date: '1999-12-10', director: director2, genre: genre2)

puts 'Seed data created!'
