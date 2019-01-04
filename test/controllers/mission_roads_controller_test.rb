require 'test_helper'

class MissionRoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission_road = mission_roads(:one)
  end

  test "should get index" do
    get mission_roads_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_road_url
    assert_response :success
  end

  test "should create mission_road" do
    assert_difference('MissionRoad.count') do
      post mission_roads_url, params: { mission_road: { highway_cost: @mission_road.highway_cost, km: @mission_road.km, name: @mission_road.name, position: @mission_road.position, user_id: @mission_road.user_id } }
    end

    assert_redirected_to mission_road_url(MissionRoad.last)
  end

  test "should show mission_road" do
    get mission_road_url(@mission_road)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_road_url(@mission_road)
    assert_response :success
  end

  test "should update mission_road" do
    patch mission_road_url(@mission_road), params: { mission_road: { highway_cost: @mission_road.highway_cost, km: @mission_road.km, name: @mission_road.name, position: @mission_road.position, user_id: @mission_road.user_id } }
    assert_redirected_to mission_road_url(@mission_road)
  end

  test "should destroy mission_road" do
    assert_difference('MissionRoad.count', -1) do
      delete mission_road_url(@mission_road)
    end

    assert_redirected_to mission_roads_url
  end
end
