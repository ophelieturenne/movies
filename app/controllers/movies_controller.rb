class MoviesController < ApplicationController

  # /movies
  # This action retrieves all movie records from the database and assigns them to @movies.
  def index
    @movies = Movie.all
  end

 # /movies/:id
  # This action shows a specific movie's details.
  def show
    @movie = Movie.find(params[:id])
  end

  # /movies/new
  # This action initializes a new movie object for the form in the new view.
  # It also loads all directors and genres for selection in the form.
  def new
    @movie = Movie.new
    @directors = Director.all
    @genres = Genre.all
  end

  # This action receives form data from the new movie form and attempts to create a new movie.
  # If the movie is successfully saved, it redirects to the movies index with a success notice.
  # If validation fails, it re-renders the new form with errors.
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: 'Movie was successfully created.'
    else
      @directors = Director.all
      @genres = Genre.all
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :director_id, :genre_id)
  end
end
