require 'test_helper'

class ReimbursmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reimbursment = reimbursments(:one)
  end

  test "should get index" do
    get reimbursments_url
    assert_response :success
  end

  test "should get new" do
    get new_reimbursment_url
    assert_response :success
  end

  test "should create reimbursment" do
    assert_difference('Reimbursment.count') do
      post reimbursments_url, params: { reimbursment: { address: @reimbursment.address, costkm: @reimbursment.costkm, departure_date: @reimbursment.departure_date, food_cost: @reimbursment.food_cost, generic_cost: @reimbursment.generic_cost, institute: @reimbursment.institute, mission_place_id: @reimbursment.mission_place_id, mission_reason_id: @reimbursment.mission_reason_id, mission_road_id: @reimbursment.mission_road_id, mission_structure_id: @reimbursment.mission_structure_id, name: @reimbursment.name, parking_cost: @reimbursment.parking_cost, reimbursment_date: @reimbursment.reimbursment_date, request_date: @reimbursment.request_date, return_date: @reimbursment.return_date, room_cost: @reimbursment.room_cost, secretary: @reimbursment.secretary, ticket_cost: @reimbursment.ticket_cost, transport_type_id: @reimbursment.transport_type_id, user_references: @reimbursment.user_references, veichle_id: @reimbursment.veichle_id } }
    end

    assert_redirected_to reimbursment_url(Reimbursment.last)
  end

  test "should show reimbursment" do
    get reimbursment_url(@reimbursment)
    assert_response :success
  end

  test "should get edit" do
    get edit_reimbursment_url(@reimbursment)
    assert_response :success
  end

  test "should update reimbursment" do
    patch reimbursment_url(@reimbursment), params: { reimbursment: { address: @reimbursment.address, costkm: @reimbursment.costkm, departure_date: @reimbursment.departure_date, food_cost: @reimbursment.food_cost, generic_cost: @reimbursment.generic_cost, institute: @reimbursment.institute, mission_place_id: @reimbursment.mission_place_id, mission_reason_id: @reimbursment.mission_reason_id, mission_road_id: @reimbursment.mission_road_id, mission_structure_id: @reimbursment.mission_structure_id, name: @reimbursment.name, parking_cost: @reimbursment.parking_cost, reimbursment_date: @reimbursment.reimbursment_date, request_date: @reimbursment.request_date, return_date: @reimbursment.return_date, room_cost: @reimbursment.room_cost, secretary: @reimbursment.secretary, ticket_cost: @reimbursment.ticket_cost, transport_type_id: @reimbursment.transport_type_id, user_references: @reimbursment.user_references, veichle_id: @reimbursment.veichle_id } }
    assert_redirected_to reimbursment_url(@reimbursment)
  end

  test "should destroy reimbursment" do
    assert_difference('Reimbursment.count', -1) do
      delete reimbursment_url(@reimbursment)
    end

    assert_redirected_to reimbursments_url
  end
end
