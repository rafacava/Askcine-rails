require 'test_helper'

class LancamentoControllerTest < ActionDispatch::IntegrationTest
  test "should get filmes" do
    get lancamento_filmes_url
    assert_response :success
  end

  test "should get postagens" do
    get lancamento_postagens_url
    assert_response :success
  end

end
