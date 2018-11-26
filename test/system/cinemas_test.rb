require "application_system_test_case"

class CinemasTest < ApplicationSystemTestCase
  setup do
    @cinema = cinemas(:one)
  end

  test "visiting the index" do
    visit cinemas_url
    assert_selector "h1", text: "Cinemas"
  end

  test "creating a Cinema" do
    visit cinemas_url
    click_on "New Cinema"

    fill_in "Cidades", with: @cinema.cidades_id
    fill_in "Descricao", with: @cinema.descricao
    fill_in "Endereco", with: @cinema.endereco
    fill_in "Fachada", with: @cinema.fachada
    fill_in "Imagem", with: @cinema.imagem
    fill_in "Lat", with: @cinema.lat
    fill_in "Long", with: @cinema.long
    fill_in "Nome", with: @cinema.nome
    click_on "Create Cinema"

    assert_text "Cinema was successfully created"
    click_on "Back"
  end

  test "updating a Cinema" do
    visit cinemas_url
    click_on "Edit", match: :first

    fill_in "Cidades", with: @cinema.cidades_id
    fill_in "Descricao", with: @cinema.descricao
    fill_in "Endereco", with: @cinema.endereco
    fill_in "Fachada", with: @cinema.fachada
    fill_in "Imagem", with: @cinema.imagem
    fill_in "Lat", with: @cinema.lat
    fill_in "Long", with: @cinema.long
    fill_in "Nome", with: @cinema.nome
    click_on "Update Cinema"

    assert_text "Cinema was successfully updated"
    click_on "Back"
  end

  test "destroying a Cinema" do
    visit cinemas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cinema was successfully destroyed"
  end
end
