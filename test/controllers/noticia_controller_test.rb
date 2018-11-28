require 'test_helper'

class NoticiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noticium = noticia(:one)
  end

  test "should get index" do
    get noticia_index_url
    assert_response :success
  end

  test "should get new" do
    get new_noticium_url
    assert_response :success
  end

  test "should create noticium" do
    assert_difference('Noticia.count') do
      post noticia_index_url, params: { noticium: { conteudo: @noticium.conteudo, imagem: @noticium.imagem, titulo: @noticium.titulo, user_id: @noticium.user_id } }
    end

    assert_redirected_to noticium_url(Noticia.last)
  end

  test "should show noticium" do
    get noticium_url(@noticium)
    assert_response :success
  end

  test "should get edit" do
    get edit_noticium_url(@noticium)
    assert_response :success
  end

  test "should update noticium" do
    patch noticium_url(@noticium), params: { noticium: { conteudo: @noticium.conteudo, imagem: @noticium.imagem, titulo: @noticium.titulo, user_id: @noticium.user_id } }
    assert_redirected_to noticium_url(@noticium)
  end

  test "should destroy noticium" do
    assert_difference('Noticia.count', -1) do
      delete noticium_url(@noticium)
    end

    assert_redirected_to noticia_index_url
  end
end
