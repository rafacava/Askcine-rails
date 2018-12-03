require 'test_helper'

class SessoesControllerTest < ActionDispatch::IntegrationTest
  test "should get filme" do
    get sessoes_filme_url
    assert_response :success
  end

  test "should get cinema" do
    get sessoes_cinema_url
    assert_response :success
  end

end
