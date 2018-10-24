require "application_system_test_case"

class FilmesTest < ApplicationSystemTestCase
  setup do
    @filme = filmes(:one)
  end

  test "visiting the index" do
    visit filmes_url
    assert_selector "h1", text: "Filmes"
  end

  test "creating a Filme" do
    visit filmes_url
    click_on "New Filme"

    fill_in "Ano", with: @filme.ano
    fill_in "Categoria", with: @filme.categoria
    fill_in "Cd Filme", with: @filme.cd_filme
    fill_in "Diretor", with: @filme.diretor
    fill_in "Imagem", with: @filme.imagem
    fill_in "Nome", with: @filme.nome
    fill_in "Sinopse", with: @filme.sinopse
    click_on "Create Filme"

    assert_text "Filme was successfully created"
    click_on "Back"
  end

  test "updating a Filme" do
    visit filmes_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @filme.ano
    fill_in "Categoria", with: @filme.categoria
    fill_in "Cd Filme", with: @filme.cd_filme
    fill_in "Diretor", with: @filme.diretor
    fill_in "Imagem", with: @filme.imagem
    fill_in "Nome", with: @filme.nome
    fill_in "Sinopse", with: @filme.sinopse
    click_on "Update Filme"

    assert_text "Filme was successfully updated"
    click_on "Back"
  end

  test "destroying a Filme" do
    visit filmes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filme was successfully destroyed"
  end
end
