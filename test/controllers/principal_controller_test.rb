require 'test_helper'

class PrincipalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get principal_index_url
    assert_response :success
    assert_select "title", "Askcine"
    assert_select "#modal1.h4", "Login"
    assert_select "h1", "Bem vindo ao AskCine"
    assert_response :success
  end
end
