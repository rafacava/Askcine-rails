require 'test_helper'

class LancamentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lancamentos_index_url
    assert_response :success
  end

end
