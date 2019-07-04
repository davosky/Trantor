require 'test_helper'

class MissionReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission_reason = mission_reasons(:one)
  end

  test "should get index" do
    get mission_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_reason_url
    assert_response :success
  end

  test "should create mission_reason" do
    assert_difference('MissionReason.count') do
      post mission_reasons_url, params: { mission_reason: { name: @mission_reason.name, position: @mission_reason.position, user_id: @mission_reason.user_id } }
    end

    assert_redirected_to mission_reason_url(MissionReason.last)
  end

  test "should show mission_reason" do
    get mission_reason_url(@mission_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_reason_url(@mission_reason)
    assert_response :success
  end

  test "should update mission_reason" do
    patch mission_reason_url(@mission_reason), params: { mission_reason: { name: @mission_reason.name, position: @mission_reason.position, user_id: @mission_reason.user_id } }
    assert_redirected_to mission_reason_url(@mission_reason)
  end

  test "should destroy mission_reason" do
    assert_difference('MissionReason.count', -1) do
      delete mission_reason_url(@mission_reason)
    end

    assert_redirected_to mission_reasons_url
  end
end
