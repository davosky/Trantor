require "application_system_test_case"

class ReasonsTest < ApplicationSystemTestCase
  setup do
    @reason = reasons(:one)
  end

  test "visiting the index" do
    visit reasons_url
    assert_selector "h1", text: "Reasons"
  end

  test "should create reason" do
    visit reasons_url
    click_on "New reason"

    fill_in "Name", with: @reason.name
    fill_in "Position", with: @reason.position
    fill_in "User", with: @reason.user_id
    click_on "Create Reason"

    assert_text "Reason was successfully created"
    click_on "Back"
  end

  test "should update Reason" do
    visit reason_url(@reason)
    click_on "Edit this reason", match: :first

    fill_in "Name", with: @reason.name
    fill_in "Position", with: @reason.position
    fill_in "User", with: @reason.user_id
    click_on "Update Reason"

    assert_text "Reason was successfully updated"
    click_on "Back"
  end

  test "should destroy Reason" do
    visit reason_url(@reason)
    click_on "Destroy this reason", match: :first

    assert_text "Reason was successfully destroyed"
  end
end
