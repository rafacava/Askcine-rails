require 'test_helper'

class MostraControllerTest < ActionDispatch::IntegrationTest
  test "should get filme" do
    get mostra_filme_url
    assert_response :success
  end

  test "should get cinema" do
    get mostra_cinema_url
    assert_response :success
  end

end
