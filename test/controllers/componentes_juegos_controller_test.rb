require 'test_helper'

class ComponentesJuegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @componentes_juego = componentes_juegos(:one)
  end

  test "should get index" do
    get componentes_juegos_url
    assert_response :success
  end

  test "should get new" do
    get new_componentes_juego_url
    assert_response :success
  end

  test "should create componentes_juego" do
    assert_difference('ComponentesJuego.count') do
      post componentes_juegos_url, params: { componentes_juego: { componente: @componentes_juego.componente, juego_id: @componentes_juego.juego_id } }
    end

    assert_redirected_to componentes_juego_url(ComponentesJuego.last)
  end

  test "should show componentes_juego" do
    get componentes_juego_url(@componentes_juego)
    assert_response :success
  end

  test "should get edit" do
    get edit_componentes_juego_url(@componentes_juego)
    assert_response :success
  end

  test "should update componentes_juego" do
    patch componentes_juego_url(@componentes_juego), params: { componentes_juego: { componente: @componentes_juego.componente, juego_id: @componentes_juego.juego_id } }
    assert_redirected_to componentes_juego_url(@componentes_juego)
  end

  test "should destroy componentes_juego" do
    assert_difference('ComponentesJuego.count', -1) do
      delete componentes_juego_url(@componentes_juego)
    end

    assert_redirected_to componentes_juegos_url
  end
end
