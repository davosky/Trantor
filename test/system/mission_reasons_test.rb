require "application_system_test_case"

class MissionReasonsTest < ApplicationSystemTestCase
  setup do
    @mission_reason = mission_reasons(:one)
  end

  test "visiting the index" do
    visit mission_reasons_url
    assert_selector "h1", text: "Mission Reasons"
  end

  test "creating a Mission reason" do
    visit mission_reasons_url
    click_on "New Mission Reason"

    fill_in "Name", with: @mission_reason.name
    fill_in "Position", with: @mission_reason.position
    fill_in "User", with: @mission_reason.user_id
    click_on "Create Mission reason"

    assert_text "Mission reason was successfully created"
    click_on "Back"
  end

  test "updating a Mission reason" do
    visit mission_reasons_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mission_reason.name
    fill_in "Position", with: @mission_reason.position
    fill_in "User", with: @mission_reason.user_id
    click_on "Update Mission reason"

    assert_text "Mission reason was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission reason" do
    visit mission_reasons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission reason was successfully destroyed"
  end
end
