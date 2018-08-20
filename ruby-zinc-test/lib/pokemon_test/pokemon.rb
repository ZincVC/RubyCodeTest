require 'net/http'
require 'json'

class Pokemon

  def initialize
    pokemon = []
  end

  def retrivePokemon
    url = 'https://pokeapi.co/api/v2/pokemon/?limit=300'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    jsonResponse = JSON.parse(response)
    jsonResponse['results'].each do |a|
      pokemon.push(a['name'])
    end
    pokemon
  end

end
