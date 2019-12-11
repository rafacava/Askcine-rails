require 'test_helper'

class MostrarcControllerTest < ActionDispatch::IntegrationTest
  test "should get cinemark" do
    get mostrarc_cinemark_url
    assert_response :success
  end

end
