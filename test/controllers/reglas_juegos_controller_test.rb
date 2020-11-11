require 'test_helper'

class ReglasJuegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reglas_juego = reglas_juegos(:one)
  end

  test "should get index" do
    get reglas_juegos_url
    assert_response :success
  end

  test "should get new" do
    get new_reglas_juego_url
    assert_response :success
  end

  test "should create reglas_juego" do
    assert_difference('ReglasJuego.count') do
      post reglas_juegos_url, params: { reglas_juego: { juego_id: @reglas_juego.juego_id, regla: @reglas_juego.regla } }
    end

    assert_redirected_to reglas_juego_url(ReglasJuego.last)
  end

  test "should show reglas_juego" do
    get reglas_juego_url(@reglas_juego)
    assert_response :success
  end

  test "should get edit" do
    get edit_reglas_juego_url(@reglas_juego)
    assert_response :success
  end

  test "should update reglas_juego" do
    patch reglas_juego_url(@reglas_juego), params: { reglas_juego: { juego_id: @reglas_juego.juego_id, regla: @reglas_juego.regla } }
    assert_redirected_to reglas_juego_url(@reglas_juego)
  end

  test "should destroy reglas_juego" do
    assert_difference('ReglasJuego.count', -1) do
      delete reglas_juego_url(@reglas_juego)
    end

    assert_redirected_to reglas_juegos_url
  end
end
