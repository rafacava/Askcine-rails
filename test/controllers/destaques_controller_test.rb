require 'test_helper'

class DestaquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destaque = destaques(:one)
  end

  test "should get index" do
    get destaques_url
    assert_response :success
  end

  test "should get new" do
    get new_destaque_url
    assert_response :success
  end

  test "should create destaque" do
    assert_difference('Destaque.count') do
      post destaques_url, params: { destaque: { imagem: @destaque.imagem, titulo: @destaque.titulo } }
    end

    assert_redirected_to destaque_url(Destaque.last)
  end

  test "should show destaque" do
    get destaque_url(@destaque)
    assert_response :success
  end

  test "should get edit" do
    get edit_destaque_url(@destaque)
    assert_response :success
  end

  test "should update destaque" do
    patch destaque_url(@destaque), params: { destaque: { imagem: @destaque.imagem, titulo: @destaque.titulo } }
    assert_redirected_to destaque_url(@destaque)
  end

  test "should destroy destaque" do
    assert_difference('Destaque.count', -1) do
      delete destaque_url(@destaque)
    end

    assert_redirected_to destaques_url
  end
end
