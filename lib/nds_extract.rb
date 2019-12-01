$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # binding.pry
# {directorName => earnings ...}
  counter = 0
  new_hash = {}
  director_names = []

  while counter < nds.length do
    total_gross = 0
    name = nds[counter][:name]
    movies = nds[counter][:movies]
    index = 0

    while index < movies.length do
      directors_earnings = movies[index][:worldwide_gross]
      total_gross += directors_earnings
      index += 1
    end

    new_hash[name] = total_gross
    # Store directors earnings
    counter += 1
  end
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  new_hash
end


