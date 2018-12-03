require "application_system_test_case"

class ComentafilmesTest < ApplicationSystemTestCase
  setup do
    @comentafilme = comentafilmes(:one)
  end

  test "visiting the index" do
    visit comentafilmes_url
    assert_selector "h1", text: "Comentafilmes"
  end

  test "creating a Comentafilme" do
    visit comentafilmes_url
    click_on "New Comentafilme"

    fill_in "Comentario", with: @comentafilme.comentario
    fill_in "Filme", with: @comentafilme.filme_id
    fill_in "Titulo", with: @comentafilme.titulo
    fill_in "User", with: @comentafilme.user_id
    click_on "Create Comentafilme"

    assert_text "Comentafilme was successfully created"
    click_on "Back"
  end

  test "updating a Comentafilme" do
    visit comentafilmes_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @comentafilme.comentario
    fill_in "Filme", with: @comentafilme.filme_id
    fill_in "Titulo", with: @comentafilme.titulo
    fill_in "User", with: @comentafilme.user_id
    click_on "Update Comentafilme"

    assert_text "Comentafilme was successfully updated"
    click_on "Back"
  end

  test "destroying a Comentafilme" do
    visit comentafilmes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comentafilme was successfully destroyed"
  end
end
