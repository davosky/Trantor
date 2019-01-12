require 'test_helper'

class FreeReimbursmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_reimbursment = free_reimbursments(:one)
  end

  test "should get index" do
    get free_reimbursments_url
    assert_response :success
  end

  test "should get new" do
    get new_free_reimbursment_url
    assert_response :success
  end

  test "should create free_reimbursment" do
    assert_difference('FreeReimbursment.count') do
      post free_reimbursments_url, params: { free_reimbursment: { address: @free_reimbursment.address, costkm: @free_reimbursment.costkm, departure_date: @free_reimbursment.departure_date, food_cost: @free_reimbursment.food_cost, generic_cost: @free_reimbursment.generic_cost, institute: @free_reimbursment.institute, mission_place: @free_reimbursment.mission_place, mission_reason: @free_reimbursment.mission_reason, mission_road: @free_reimbursment.mission_road, mission_road_hw: @free_reimbursment.mission_road_hw, mission_road_km: @free_reimbursment.mission_road_km, mission_structure: @free_reimbursment.mission_structure, name: @free_reimbursment.name, parking_cost: @free_reimbursment.parking_cost, reimbursment_date: @free_reimbursment.reimbursment_date, request_date: @free_reimbursment.request_date, return_date: @free_reimbursment.return_date, room_cost: @free_reimbursment.room_cost, secretary: @free_reimbursment.secretary, ticket_cost: @free_reimbursment.ticket_cost, transport_type_id: @free_reimbursment.transport_type_id, user_id: @free_reimbursment.user_id, veichle_id: @free_reimbursment.veichle_id } }
    end

    assert_redirected_to free_reimbursment_url(FreeReimbursment.last)
  end

  test "should show free_reimbursment" do
    get free_reimbursment_url(@free_reimbursment)
    assert_response :success
  end

  test "should get edit" do
    get edit_free_reimbursment_url(@free_reimbursment)
    assert_response :success
  end

  test "should update free_reimbursment" do
    patch free_reimbursment_url(@free_reimbursment), params: { free_reimbursment: { address: @free_reimbursment.address, costkm: @free_reimbursment.costkm, departure_date: @free_reimbursment.departure_date, food_cost: @free_reimbursment.food_cost, generic_cost: @free_reimbursment.generic_cost, institute: @free_reimbursment.institute, mission_place: @free_reimbursment.mission_place, mission_reason: @free_reimbursment.mission_reason, mission_road: @free_reimbursment.mission_road, mission_road_hw: @free_reimbursment.mission_road_hw, mission_road_km: @free_reimbursment.mission_road_km, mission_structure: @free_reimbursment.mission_structure, name: @free_reimbursment.name, parking_cost: @free_reimbursment.parking_cost, reimbursment_date: @free_reimbursment.reimbursment_date, request_date: @free_reimbursment.request_date, return_date: @free_reimbursment.return_date, room_cost: @free_reimbursment.room_cost, secretary: @free_reimbursment.secretary, ticket_cost: @free_reimbursment.ticket_cost, transport_type_id: @free_reimbursment.transport_type_id, user_id: @free_reimbursment.user_id, veichle_id: @free_reimbursment.veichle_id } }
    assert_redirected_to free_reimbursment_url(@free_reimbursment)
  end

  test "should destroy free_reimbursment" do
    assert_difference('FreeReimbursment.count', -1) do
      delete free_reimbursment_url(@free_reimbursment)
    end

    assert_redirected_to free_reimbursments_url
  end
end
