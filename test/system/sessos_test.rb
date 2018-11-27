require "application_system_test_case"

class SessosTest < ApplicationSystemTestCase
  setup do
    @sesso = sessos(:one)
  end

  test "visiting the index" do
    visit sessos_url
    assert_selector "h1", text: "Sessos"
  end

  test "creating a Sesso" do
    visit sessos_url
    click_on "New Sesso"

    fill_in "Cinema", with: @sesso.cinema_id
    fill_in "Dia", with: @sesso.dia
    fill_in "Filme", with: @sesso.filme_id
    fill_in "Horario", with: @sesso.horario
    click_on "Create Sesso"

    assert_text "Sesso was successfully created"
    click_on "Back"
  end

  test "updating a Sesso" do
    visit sessos_url
    click_on "Edit", match: :first

    fill_in "Cinema", with: @sesso.cinema_id
    fill_in "Dia", with: @sesso.dia
    fill_in "Filme", with: @sesso.filme_id
    fill_in "Horario", with: @sesso.horario
    click_on "Update Sesso"

    assert_text "Sesso was successfully updated"
    click_on "Back"
  end

  test "destroying a Sesso" do
    visit sessos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sesso was successfully destroyed"
  end
end
