require 'test_helper'

class SobreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sobre_index_url
    assert_response :success
  end

end
