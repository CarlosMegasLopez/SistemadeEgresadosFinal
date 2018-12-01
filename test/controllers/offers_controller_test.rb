require 'test_helper'

class OffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get offers_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_url
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post offers_url, params: { offer: { contacto_oferta: @offer.contacto_oferta, edad_oferta: @offer.edad_oferta, email_oferta: @offer.email_oferta, empresa_oferta: @offer.empresa_oferta, experiencia_oferta: @offer.experiencia_oferta, horario_oferta: @offer.horario_oferta, puesto_oferta: @offer.puesto_oferta, sexo_oferta: @offer.sexo_oferta, sueldo_oferta: @offer.sueldo_oferta, vacante_oferta: @offer.vacante_oferta } }
    end

    assert_redirected_to offer_url(Offer.last)
  end

  test "should show offer" do
    get offer_url(@offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_url(@offer)
    assert_response :success
  end

  test "should update offer" do
    patch offer_url(@offer), params: { offer: { contacto_oferta: @offer.contacto_oferta, edad_oferta: @offer.edad_oferta, email_oferta: @offer.email_oferta, empresa_oferta: @offer.empresa_oferta, experiencia_oferta: @offer.experiencia_oferta, horario_oferta: @offer.horario_oferta, puesto_oferta: @offer.puesto_oferta, sexo_oferta: @offer.sexo_oferta, sueldo_oferta: @offer.sueldo_oferta, vacante_oferta: @offer.vacante_oferta } }
    assert_redirected_to offer_url(@offer)
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete offer_url(@offer)
    end

    assert_redirected_to offers_url
  end
end
