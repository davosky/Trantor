require "application_system_test_case"

class ReimbursmentsTest < ApplicationSystemTestCase
  setup do
    @reimbursment = reimbursments(:one)
  end

  test "visiting the index" do
    visit reimbursments_url
    assert_selector "h1", text: "Reimbursments"
  end

  test "creating a Reimbursment" do
    visit reimbursments_url
    click_on "New Reimbursment"

    fill_in "Address", with: @reimbursment.address
    fill_in "Costkm", with: @reimbursment.costkm
    fill_in "Departure date", with: @reimbursment.departure_date
    fill_in "Food cost", with: @reimbursment.food_cost
    fill_in "Generic cost", with: @reimbursment.generic_cost
    fill_in "Institute", with: @reimbursment.institute
    fill_in "Mission place", with: @reimbursment.mission_place_id
    fill_in "Mission reason", with: @reimbursment.mission_reason_id
    fill_in "Mission road", with: @reimbursment.mission_road_id
    fill_in "Mission structure", with: @reimbursment.mission_structure_id
    fill_in "Name", with: @reimbursment.name
    fill_in "Parking cost", with: @reimbursment.parking_cost
    fill_in "Reimbursment date", with: @reimbursment.reimbursment_date
    fill_in "Request date", with: @reimbursment.request_date
    fill_in "Return date", with: @reimbursment.return_date
    fill_in "Room cost", with: @reimbursment.room_cost
    fill_in "Secretary", with: @reimbursment.secretary
    fill_in "Ticket cost", with: @reimbursment.ticket_cost
    fill_in "Transport type", with: @reimbursment.transport_type_id
    fill_in "User references", with: @reimbursment.user_references
    fill_in "Veichle", with: @reimbursment.veichle_id
    click_on "Create Reimbursment"

    assert_text "Reimbursment was successfully created"
    click_on "Back"
  end

  test "updating a Reimbursment" do
    visit reimbursments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @reimbursment.address
    fill_in "Costkm", with: @reimbursment.costkm
    fill_in "Departure date", with: @reimbursment.departure_date
    fill_in "Food cost", with: @reimbursment.food_cost
    fill_in "Generic cost", with: @reimbursment.generic_cost
    fill_in "Institute", with: @reimbursment.institute
    fill_in "Mission place", with: @reimbursment.mission_place_id
    fill_in "Mission reason", with: @reimbursment.mission_reason_id
    fill_in "Mission road", with: @reimbursment.mission_road_id
    fill_in "Mission structure", with: @reimbursment.mission_structure_id
    fill_in "Name", with: @reimbursment.name
    fill_in "Parking cost", with: @reimbursment.parking_cost
    fill_in "Reimbursment date", with: @reimbursment.reimbursment_date
    fill_in "Request date", with: @reimbursment.request_date
    fill_in "Return date", with: @reimbursment.return_date
    fill_in "Room cost", with: @reimbursment.room_cost
    fill_in "Secretary", with: @reimbursment.secretary
    fill_in "Ticket cost", with: @reimbursment.ticket_cost
    fill_in "Transport type", with: @reimbursment.transport_type_id
    fill_in "User references", with: @reimbursment.user_references
    fill_in "Veichle", with: @reimbursment.veichle_id
    click_on "Update Reimbursment"

    assert_text "Reimbursment was successfully updated"
    click_on "Back"
  end

  test "destroying a Reimbursment" do
    visit reimbursments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reimbursment was successfully destroyed"
  end
end
