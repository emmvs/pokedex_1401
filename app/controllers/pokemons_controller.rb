require 'open-uri'
require 'json'

class PokemonsController < ApplicationController
  def index
    url = "https://pokeapi.co/api/v2/pokemon/"
    pokemons_list = JSON.parse(URI.open(url).read)

    @pokemons = pokemons_list["results"].map do |pokemon|
      details = JSON.parse(URI.open(pokemon["url"]).read)
      {
        name: pokemon["name"],
        image_url: details["sprites"]["front_shiny"]
      }
    end
  end
end
