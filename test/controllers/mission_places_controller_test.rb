require 'test_helper'

class MissionPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission_place = mission_places(:one)
  end

  test "should get index" do
    get mission_places_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_place_url
    assert_response :success
  end

  test "should create mission_place" do
    assert_difference('MissionPlace.count') do
      post mission_places_url, params: { mission_place: { name: @mission_place.name, position: @mission_place.position, user_id: @mission_place.user_id } }
    end

    assert_redirected_to mission_place_url(MissionPlace.last)
  end

  test "should show mission_place" do
    get mission_place_url(@mission_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_place_url(@mission_place)
    assert_response :success
  end

  test "should update mission_place" do
    patch mission_place_url(@mission_place), params: { mission_place: { name: @mission_place.name, position: @mission_place.position, user_id: @mission_place.user_id } }
    assert_redirected_to mission_place_url(@mission_place)
  end

  test "should destroy mission_place" do
    assert_difference('MissionPlace.count', -1) do
      delete mission_place_url(@mission_place)
    end

    assert_redirected_to mission_places_url
  end
end
