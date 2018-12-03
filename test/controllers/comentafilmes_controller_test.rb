require 'test_helper'

class ComentafilmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentafilme = comentafilmes(:one)
  end

  test "should get index" do
    get comentafilmes_url
    assert_response :success
  end

  test "should get new" do
    get new_comentafilme_url
    assert_response :success
  end

  test "should create comentafilme" do
    assert_difference('Comentafilme.count') do
      post comentafilmes_url, params: { comentafilme: { comentario: @comentafilme.comentario, filme_id: @comentafilme.filme_id, titulo: @comentafilme.titulo, user_id: @comentafilme.user_id } }
    end

    assert_redirected_to comentafilme_url(Comentafilme.last)
  end

  test "should show comentafilme" do
    get comentafilme_url(@comentafilme)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentafilme_url(@comentafilme)
    assert_response :success
  end

  test "should update comentafilme" do
    patch comentafilme_url(@comentafilme), params: { comentafilme: { comentario: @comentafilme.comentario, filme_id: @comentafilme.filme_id, titulo: @comentafilme.titulo, user_id: @comentafilme.user_id } }
    assert_redirected_to comentafilme_url(@comentafilme)
  end

  test "should destroy comentafilme" do
    assert_difference('Comentafilme.count', -1) do
      delete comentafilme_url(@comentafilme)
    end

    assert_redirected_to comentafilmes_url
  end
end
