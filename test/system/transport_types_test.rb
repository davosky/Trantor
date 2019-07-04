require "application_system_test_case"

class TransportTypesTest < ApplicationSystemTestCase
  setup do
    @transport_type = transport_types(:one)
  end

  test "visiting the index" do
    visit transport_types_url
    assert_selector "h1", text: "Transport Types"
  end

  test "creating a Transport type" do
    visit transport_types_url
    click_on "New Transport Type"

    fill_in "Name", with: @transport_type.name
    fill_in "Position", with: @transport_type.position
    click_on "Create Transport type"

    assert_text "Transport type was successfully created"
    click_on "Back"
  end

  test "updating a Transport type" do
    visit transport_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @transport_type.name
    fill_in "Position", with: @transport_type.position
    click_on "Update Transport type"

    assert_text "Transport type was successfully updated"
    click_on "Back"
  end

  test "destroying a Transport type" do
    visit transport_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transport type was successfully destroyed"
  end
end
