require 'test_helper'

class AdministracaoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get administracao_home_url
    assert_response :success
  end

end
