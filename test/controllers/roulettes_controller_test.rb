require 'test_helper'

class RoulettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roulette = roulettes(:one)
  end

  test "should get index" do
    get roulettes_url
    assert_response :success
  end

  test "should get new" do
    get new_roulette_url
    assert_response :success
  end

  test "should create roulette" do
    assert_difference('Roulette.count') do
      post roulettes_url, params: { roulette: { cuerpo_carrusel: @roulette.cuerpo_carrusel, imagen_carrusel: @roulette.imagen_carrusel, subtitulo_carrusel: @roulette.subtitulo_carrusel, titulo_carrusel: @roulette.titulo_carrusel, user_id: @roulette.user_id } }
    end

    assert_redirected_to roulette_url(Roulette.last)
  end

  test "should show roulette" do
    get roulette_url(@roulette)
    assert_response :success
  end

  test "should get edit" do
    get edit_roulette_url(@roulette)
    assert_response :success
  end

  test "should update roulette" do
    patch roulette_url(@roulette), params: { roulette: { cuerpo_carrusel: @roulette.cuerpo_carrusel, imagen_carrusel: @roulette.imagen_carrusel, subtitulo_carrusel: @roulette.subtitulo_carrusel, titulo_carrusel: @roulette.titulo_carrusel, user_id: @roulette.user_id } }
    assert_redirected_to roulette_url(@roulette)
  end

  test "should destroy roulette" do
    assert_difference('Roulette.count', -1) do
      delete roulette_url(@roulette)
    end

    assert_redirected_to roulettes_url
  end
end
