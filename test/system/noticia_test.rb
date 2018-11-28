require "application_system_test_case"

class NoticiaTest < ApplicationSystemTestCase
  setup do
    @noticium = noticia(:one)
  end

  test "visiting the index" do
    visit noticia_url
    assert_selector "h1", text: "Noticia"
  end

  test "creating a Noticia" do
    visit noticia_url
    click_on "New Noticia"

    fill_in "Conteudo", with: @noticium.conteudo
    fill_in "Imagem", with: @noticium.imagem
    fill_in "Titulo", with: @noticium.titulo
    fill_in "User", with: @noticium.user_id
    click_on "Create Noticia"

    assert_text "Noticia was successfully created"
    click_on "Back"
  end

  test "updating a Noticia" do
    visit noticia_url
    click_on "Edit", match: :first

    fill_in "Conteudo", with: @noticium.conteudo
    fill_in "Imagem", with: @noticium.imagem
    fill_in "Titulo", with: @noticium.titulo
    fill_in "User", with: @noticium.user_id
    click_on "Update Noticia"

    assert_text "Noticia was successfully updated"
    click_on "Back"
  end

  test "destroying a Noticia" do
    visit noticia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noticia was successfully destroyed"
  end
end
