require "application_system_test_case"

class PostagemsTest < ApplicationSystemTestCase
  setup do
    @postagem = postagems(:one)
  end

  test "visiting the index" do
    visit postagems_url
    assert_selector "h1", text: "Postagems"
  end

  test "creating a Postagem" do
    visit postagems_url
    click_on "New Postagem"

    fill_in "Conteudo", with: @postagem.conteudo
    fill_in "Imagem", with: @postagem.imagem
    fill_in "Titulo", with: @postagem.titulo
    fill_in "User", with: @postagem.user_id
    click_on "Create Postagem"

    assert_text "Postagem was successfully created"
    click_on "Back"
  end

  test "updating a Postagem" do
    visit postagems_url
    click_on "Edit", match: :first

    fill_in "Conteudo", with: @postagem.conteudo
    fill_in "Imagem", with: @postagem.imagem
    fill_in "Titulo", with: @postagem.titulo
    fill_in "User", with: @postagem.user_id
    click_on "Update Postagem"

    assert_text "Postagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Postagem" do
    visit postagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postagem was successfully destroyed"
  end
end
