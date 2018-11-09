require 'test_helper'

class BuscaControllerTest < ActionDispatch::IntegrationTest
  test "should get filmes" do
    get busca_filmes_url
    assert_response :success
  end

  test "should get cinema" do
    get busca_cinema_url
    assert_response :success
  end

end
