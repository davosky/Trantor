require "application_system_test_case"

class VeichlesTest < ApplicationSystemTestCase
  setup do
    @veichle = veichles(:one)
  end

  test "visiting the index" do
    visit veichles_url
    assert_selector "h1", text: "Veichles"
  end

  test "creating a Veichle" do
    visit veichles_url
    click_on "New Veichle"

    fill_in "Licenceplate", with: @veichle.licenceplate
    fill_in "Name", with: @veichle.name
    fill_in "Position", with: @veichle.position
    fill_in "Producer", with: @veichle.producer
    fill_in "User", with: @veichle.user_id
    click_on "Create Veichle"

    assert_text "Veichle was successfully created"
    click_on "Back"
  end

  test "updating a Veichle" do
    visit veichles_url
    click_on "Edit", match: :first

    fill_in "Licenceplate", with: @veichle.licenceplate
    fill_in "Name", with: @veichle.name
    fill_in "Position", with: @veichle.position
    fill_in "Producer", with: @veichle.producer
    fill_in "User", with: @veichle.user_id
    click_on "Update Veichle"

    assert_text "Veichle was successfully updated"
    click_on "Back"
  end

  test "destroying a Veichle" do
    visit veichles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veichle was successfully destroyed"
  end
end
