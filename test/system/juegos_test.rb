require "application_system_test_case"

class JuegosTest < ApplicationSystemTestCase
  setup do
    @juego = juegos(:one)
  end

  test "visiting the index" do
    visit juegos_url
    assert_selector "h1", text: "Juegos"
  end

  test "creating a Juego" do
    visit juegos_url
    click_on "New Juego"

    fill_in "Name", with: @juego.name
    click_on "Create Juego"

    assert_text "Juego was successfully created"
    click_on "Back"
  end

  test "updating a Juego" do
    visit juegos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @juego.name
    click_on "Update Juego"

    assert_text "Juego was successfully updated"
    click_on "Back"
  end

  test "destroying a Juego" do
    visit juegos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Juego was successfully destroyed"
  end
end
