require 'test_helper'

class FilmesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get filmes_index_url
    assert_response :success
  end

end
