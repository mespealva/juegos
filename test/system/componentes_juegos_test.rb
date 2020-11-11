require "application_system_test_case"

class ComponentesJuegosTest < ApplicationSystemTestCase
  setup do
    @componentes_juego = componentes_juegos(:one)
  end

  test "visiting the index" do
    visit componentes_juegos_url
    assert_selector "h1", text: "Componentes Juegos"
  end

  test "creating a Componentes juego" do
    visit componentes_juegos_url
    click_on "New Componentes Juego"

    fill_in "Componente", with: @componentes_juego.componente
    fill_in "Juego", with: @componentes_juego.juego_id
    click_on "Create Componentes juego"

    assert_text "Componentes juego was successfully created"
    click_on "Back"
  end

  test "updating a Componentes juego" do
    visit componentes_juegos_url
    click_on "Edit", match: :first

    fill_in "Componente", with: @componentes_juego.componente
    fill_in "Juego", with: @componentes_juego.juego_id
    click_on "Update Componentes juego"

    assert_text "Componentes juego was successfully updated"
    click_on "Back"
  end

  test "destroying a Componentes juego" do
    visit componentes_juegos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Componentes juego was successfully destroyed"
  end
end
