require 'test_helper'

class AssociationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @association = associations(:one)
  end

  test "should get index" do
    get associations_url
    assert_response :success
  end

  test "should get new" do
    get new_association_url
    assert_response :success
  end

  test "should create association" do
    assert_difference('Association.count') do
      post associations_url, params: { association: { contacto_empresa: @association.contacto_empresa, correo_electronico_empresa: @association.correo_electronico_empresa, nombre_empresa: @association.nombre_empresa, telefono_empresa: @association.telefono_empresa } }
    end

    assert_redirected_to association_url(Association.last)
  end

  test "should show association" do
    get association_url(@association)
    assert_response :success
  end

  test "should get edit" do
    get edit_association_url(@association)
    assert_response :success
  end

  test "should update association" do
    patch association_url(@association), params: { association: { contacto_empresa: @association.contacto_empresa, correo_electronico_empresa: @association.correo_electronico_empresa, nombre_empresa: @association.nombre_empresa, telefono_empresa: @association.telefono_empresa } }
    assert_redirected_to association_url(@association)
  end

  test "should destroy association" do
    assert_difference('Association.count', -1) do
      delete association_url(@association)
    end

    assert_redirected_to associations_url
  end
end
