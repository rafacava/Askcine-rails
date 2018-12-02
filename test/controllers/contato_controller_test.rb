require 'test_helper'

class ContatoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contato_index_url
    assert_response :success
  end

end
