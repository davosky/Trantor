require "application_system_test_case"

class FreeReimbursmentsTest < ApplicationSystemTestCase
  setup do
    @free_reimbursment = free_reimbursments(:one)
  end

  test "visiting the index" do
    visit free_reimbursments_url
    assert_selector "h1", text: "Free Reimbursments"
  end

  test "creating a Free reimbursment" do
    visit free_reimbursments_url
    click_on "New Free Reimbursment"

    fill_in "Address", with: @free_reimbursment.address
    fill_in "Costkm", with: @free_reimbursment.costkm
    fill_in "Departure date", with: @free_reimbursment.departure_date
    fill_in "Food cost", with: @free_reimbursment.food_cost
    fill_in "Generic cost", with: @free_reimbursment.generic_cost
    fill_in "Institute", with: @free_reimbursment.institute
    fill_in "Mission place", with: @free_reimbursment.mission_place
    fill_in "Mission reason", with: @free_reimbursment.mission_reason
    fill_in "Mission road", with: @free_reimbursment.mission_road
    fill_in "Mission road hw", with: @free_reimbursment.mission_road_hw
    fill_in "Mission road km", with: @free_reimbursment.mission_road_km
    fill_in "Mission structure", with: @free_reimbursment.mission_structure
    fill_in "Name", with: @free_reimbursment.name
    fill_in "Parking cost", with: @free_reimbursment.parking_cost
    fill_in "Reimbursment date", with: @free_reimbursment.reimbursment_date
    fill_in "Request date", with: @free_reimbursment.request_date
    fill_in "Return date", with: @free_reimbursment.return_date
    fill_in "Room cost", with: @free_reimbursment.room_cost
    fill_in "Secretary", with: @free_reimbursment.secretary
    fill_in "Ticket cost", with: @free_reimbursment.ticket_cost
    fill_in "Transport type", with: @free_reimbursment.transport_type_id
    fill_in "User", with: @free_reimbursment.user_id
    fill_in "Veichle", with: @free_reimbursment.veichle_id
    click_on "Create Free reimbursment"

    assert_text "Free reimbursment was successfully created"
    click_on "Back"
  end

  test "updating a Free reimbursment" do
    visit free_reimbursments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @free_reimbursment.address
    fill_in "Costkm", with: @free_reimbursment.costkm
    fill_in "Departure date", with: @free_reimbursment.departure_date
    fill_in "Food cost", with: @free_reimbursment.food_cost
    fill_in "Generic cost", with: @free_reimbursment.generic_cost
    fill_in "Institute", with: @free_reimbursment.institute
    fill_in "Mission place", with: @free_reimbursment.mission_place
    fill_in "Mission reason", with: @free_reimbursment.mission_reason
    fill_in "Mission road", with: @free_reimbursment.mission_road
    fill_in "Mission road hw", with: @free_reimbursment.mission_road_hw
    fill_in "Mission road km", with: @free_reimbursment.mission_road_km
    fill_in "Mission structure", with: @free_reimbursment.mission_structure
    fill_in "Name", with: @free_reimbursment.name
    fill_in "Parking cost", with: @free_reimbursment.parking_cost
    fill_in "Reimbursment date", with: @free_reimbursment.reimbursment_date
    fill_in "Request date", with: @free_reimbursment.request_date
    fill_in "Return date", with: @free_reimbursment.return_date
    fill_in "Room cost", with: @free_reimbursment.room_cost
    fill_in "Secretary", with: @free_reimbursment.secretary
    fill_in "Ticket cost", with: @free_reimbursment.ticket_cost
    fill_in "Transport type", with: @free_reimbursment.transport_type_id
    fill_in "User", with: @free_reimbursment.user_id
    fill_in "Veichle", with: @free_reimbursment.veichle_id
    click_on "Update Free reimbursment"

    assert_text "Free reimbursment was successfully updated"
    click_on "Back"
  end

  test "destroying a Free reimbursment" do
    visit free_reimbursments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Free reimbursment was successfully destroyed"
  end
end
