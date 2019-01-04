require "application_system_test_case"

class MissionPlacesTest < ApplicationSystemTestCase
  setup do
    @mission_place = mission_places(:one)
  end

  test "visiting the index" do
    visit mission_places_url
    assert_selector "h1", text: "Mission Places"
  end

  test "creating a Mission place" do
    visit mission_places_url
    click_on "New Mission Place"

    fill_in "Name", with: @mission_place.name
    fill_in "Position", with: @mission_place.position
    fill_in "User", with: @mission_place.user_id
    click_on "Create Mission place"

    assert_text "Mission place was successfully created"
    click_on "Back"
  end

  test "updating a Mission place" do
    visit mission_places_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mission_place.name
    fill_in "Position", with: @mission_place.position
    fill_in "User", with: @mission_place.user_id
    click_on "Update Mission place"

    assert_text "Mission place was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission place" do
    visit mission_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission place was successfully destroyed"
  end
end
