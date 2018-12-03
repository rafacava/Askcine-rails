require 'test_helper'

class BuscarControllerTest < ActionDispatch::IntegrationTest
  test "should get cinemas" do
    get buscar_cinemas_url
    assert_response :success
  end

  test "should get filme" do
    get buscar_filme_url
    assert_response :success
  end

end
