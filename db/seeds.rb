require "json"
require "open-uri"

Movie.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
movie_serialized = URI.parse(url).read
movies = JSON.parse(movie_serialized)
movies["results"].each do |movie|
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: movie["vote_average"])
end
p Movie.all

# puts "#{movie.size}"
