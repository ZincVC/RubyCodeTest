require_relative './pokemon_test/pokemon'
require_relative './pokemon_test/state_system'
require_relative './pokemon_test/algo'

pokemonData = Pokemon.retrivePokemon
a = StateSystem.new
a.write_data("/Users/quinnkoike/Code/Zinc/Tests/ruby-zinc-test/Data/pokemon.txt", pokemonData)
savedData = a.read_data("/Users/quinnkoike/Code/Zinc/Tests/ruby-zinc-test/Data/pokemon.txt")
algorthimObj = Algo.new(savedData)
longest_pokemon = algorthimObj.get_longest_string
redacted_pokemon = algorthimObj.remove_words_with_b
b = redacted_pokemon << longest_pokemon
a.write_data("/Users/quinnkoike/Code/Zinc/Tests/ruby-zinc-test/Data/pokemon.txt")
