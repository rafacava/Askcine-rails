require "application_system_test_case"

class DestaquesTest < ApplicationSystemTestCase
  setup do
    @destaque = destaques(:one)
  end

  test "visiting the index" do
    visit destaques_url
    assert_selector "h1", text: "Destaques"
  end

  test "creating a Destaque" do
    visit destaques_url
    click_on "New Destaque"

    fill_in "Imagem", with: @destaque.imagem
    fill_in "Titulo", with: @destaque.titulo
    click_on "Create Destaque"

    assert_text "Destaque was successfully created"
    click_on "Back"
  end

  test "updating a Destaque" do
    visit destaques_url
    click_on "Edit", match: :first

    fill_in "Imagem", with: @destaque.imagem
    fill_in "Titulo", with: @destaque.titulo
    click_on "Update Destaque"

    assert_text "Destaque was successfully updated"
    click_on "Back"
  end

  test "destroying a Destaque" do
    visit destaques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destaque was successfully destroyed"
  end
end
