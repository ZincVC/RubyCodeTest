require 'date'
require_relative './pokemon_test/pokemon'
require_relative './pokemon_test/algo'

# Set the root path
AppRoot = File.expand_path(File.dirname(__FILE__), '../')

def write_data(path, data)
  # Will overwrite any previous data due to `w`
  open(path, 'w') do |f|
    f.puts data
  end
end

# Create Pokemon Object and get data from third party api
pokemonData = Pokemon.new.retrievePokemon

# write pokemon data to file
write_data("#{AppRoot}/Data/pokemon-#{DateTime.now}.txt", pokemonData)

# Create new algoObj
algorthimObj = Algo.new(pokemonData)

# Manipluate data
longest_pokemon = algorthimObj.get_longest_string
redacted_pokemon = algorthimObj.remove_words_with_b

# Combine the longest and readacted into single arr
finalOutput = redacted_pokemon << longest_pokemon

# Write final output to file
write_data("#{AppRoot}/Data/pokemon-#{DateTime.now}-redacted&longest.txt", finalOutput)
