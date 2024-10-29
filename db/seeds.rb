# Create Directors
director_james = Director.create(name: 'Smith')
director_john = Director.create(name: 'John')

# Create Genres
genre_one = Genre.create(name: 'Romantique')
genre_two = Genre.create(name: 'Fantastique')

# Create Movies
Movie.create(title: 'Avatar', release_date: '2009-12-18', director: director_james, genre: genre_one)
Movie.create(title: 'Pak', release_date: '2009-12-19', director: director_john, genre: genre_two)
