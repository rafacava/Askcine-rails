require 'test_helper'

class ColaboradorControllerTest < ActionDispatch::IntegrationTest
  test "should get portal" do
    get colaborador_portal_url
    assert_response :success
  end

  test "should get novo" do
    get colaborador_novo_url
    assert_response :success
  end

end
