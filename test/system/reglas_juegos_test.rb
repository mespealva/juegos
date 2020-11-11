require "application_system_test_case"

class ReglasJuegosTest < ApplicationSystemTestCase
  setup do
    @reglas_juego = reglas_juegos(:one)
  end

  test "visiting the index" do
    visit reglas_juegos_url
    assert_selector "h1", text: "Reglas Juegos"
  end

  test "creating a Reglas juego" do
    visit reglas_juegos_url
    click_on "New Reglas Juego"

    fill_in "Juego", with: @reglas_juego.juego_id
    fill_in "Regla", with: @reglas_juego.regla
    click_on "Create Reglas juego"

    assert_text "Reglas juego was successfully created"
    click_on "Back"
  end

  test "updating a Reglas juego" do
    visit reglas_juegos_url
    click_on "Edit", match: :first

    fill_in "Juego", with: @reglas_juego.juego_id
    fill_in "Regla", with: @reglas_juego.regla
    click_on "Update Reglas juego"

    assert_text "Reglas juego was successfully updated"
    click_on "Back"
  end

  test "destroying a Reglas juego" do
    visit reglas_juegos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reglas juego was successfully destroyed"
  end
end
