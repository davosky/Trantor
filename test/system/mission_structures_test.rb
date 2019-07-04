require "application_system_test_case"

class MissionStructuresTest < ApplicationSystemTestCase
  setup do
    @mission_structure = mission_structures(:one)
  end

  test "visiting the index" do
    visit mission_structures_url
    assert_selector "h1", text: "Mission Structures"
  end

  test "creating a Mission structure" do
    visit mission_structures_url
    click_on "New Mission Structure"

    fill_in "Name", with: @mission_structure.name
    fill_in "Position", with: @mission_structure.position
    fill_in "User", with: @mission_structure.user_id
    click_on "Create Mission structure"

    assert_text "Mission structure was successfully created"
    click_on "Back"
  end

  test "updating a Mission structure" do
    visit mission_structures_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mission_structure.name
    fill_in "Position", with: @mission_structure.position
    fill_in "User", with: @mission_structure.user_id
    click_on "Update Mission structure"

    assert_text "Mission structure was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission structure" do
    visit mission_structures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission structure was successfully destroyed"
  end
end
