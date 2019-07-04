require "application_system_test_case"

class MissionRoadsTest < ApplicationSystemTestCase
  setup do
    @mission_road = mission_roads(:one)
  end

  test "visiting the index" do
    visit mission_roads_url
    assert_selector "h1", text: "Mission Roads"
  end

  test "creating a Mission road" do
    visit mission_roads_url
    click_on "New Mission Road"

    fill_in "Highway cost", with: @mission_road.highway_cost
    fill_in "Km", with: @mission_road.km
    fill_in "Name", with: @mission_road.name
    fill_in "Position", with: @mission_road.position
    fill_in "User", with: @mission_road.user_id
    click_on "Create Mission road"

    assert_text "Mission road was successfully created"
    click_on "Back"
  end

  test "updating a Mission road" do
    visit mission_roads_url
    click_on "Edit", match: :first

    fill_in "Highway cost", with: @mission_road.highway_cost
    fill_in "Km", with: @mission_road.km
    fill_in "Name", with: @mission_road.name
    fill_in "Position", with: @mission_road.position
    fill_in "User", with: @mission_road.user_id
    click_on "Update Mission road"

    assert_text "Mission road was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission road" do
    visit mission_roads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission road was successfully destroyed"
  end
end
