require "application_system_test_case"

class PokemonsTest < ApplicationSystemTestCase
  test "visiting pokemons page" do
    visit "/"

    assert_selector "h1", text: "Pokemons"
  end
end
