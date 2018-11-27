require 'test_helper'

class SessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sesso = sessos(:one)
  end

  test "should get index" do
    get sessos_url
    assert_response :success
  end

  test "should get new" do
    get new_sesso_url
    assert_response :success
  end

  test "should create sesso" do
    assert_difference('Sesso.count') do
      post sessos_url, params: { sesso: { cinema_id: @sesso.cinema_id, dia: @sesso.dia, filme_id: @sesso.filme_id, horario: @sesso.horario } }
    end

    assert_redirected_to sesso_url(Sesso.last)
  end

  test "should show sesso" do
    get sesso_url(@sesso)
    assert_response :success
  end

  test "should get edit" do
    get edit_sesso_url(@sesso)
    assert_response :success
  end

  test "should update sesso" do
    patch sesso_url(@sesso), params: { sesso: { cinema_id: @sesso.cinema_id, dia: @sesso.dia, filme_id: @sesso.filme_id, horario: @sesso.horario } }
    assert_redirected_to sesso_url(@sesso)
  end

  test "should destroy sesso" do
    assert_difference('Sesso.count', -1) do
      delete sesso_url(@sesso)
    end

    assert_redirected_to sessos_url
  end
end
