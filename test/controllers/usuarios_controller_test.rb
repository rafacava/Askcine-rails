require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_index_url
    assert_response :success
  end

  test "should get edit" do
    get usuarios_edit_url
    assert_response :success
  end

  test "should get avatar" do
    get usuarios_avatar_url
    assert_response :success
  end

end
