require 'test_helper'

class MissionStructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission_structure = mission_structures(:one)
  end

  test "should get index" do
    get mission_structures_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_structure_url
    assert_response :success
  end

  test "should create mission_structure" do
    assert_difference('MissionStructure.count') do
      post mission_structures_url, params: { mission_structure: { name: @mission_structure.name, position: @mission_structure.position, user_id: @mission_structure.user_id } }
    end

    assert_redirected_to mission_structure_url(MissionStructure.last)
  end

  test "should show mission_structure" do
    get mission_structure_url(@mission_structure)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_structure_url(@mission_structure)
    assert_response :success
  end

  test "should update mission_structure" do
    patch mission_structure_url(@mission_structure), params: { mission_structure: { name: @mission_structure.name, position: @mission_structure.position, user_id: @mission_structure.user_id } }
    assert_redirected_to mission_structure_url(@mission_structure)
  end

  test "should destroy mission_structure" do
    assert_difference('MissionStructure.count', -1) do
      delete mission_structure_url(@mission_structure)
    end

    assert_redirected_to mission_structures_url
  end
end
