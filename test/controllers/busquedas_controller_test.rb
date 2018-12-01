require 'test_helper'

class BusquedasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get busquedas_index_url
    assert_response :success
  end

end
