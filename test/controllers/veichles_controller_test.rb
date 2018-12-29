require 'test_helper'

class VeichlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veichle = veichles(:one)
  end

  test "should get index" do
    get veichles_url
    assert_response :success
  end

  test "should get new" do
    get new_veichle_url
    assert_response :success
  end

  test "should create veichle" do
    assert_difference('Veichle.count') do
      post veichles_url, params: { veichle: { licenceplate: @veichle.licenceplate, name: @veichle.name, position: @veichle.position, producer: @veichle.producer, user_id: @veichle.user_id } }
    end

    assert_redirected_to veichle_url(Veichle.last)
  end

  test "should show veichle" do
    get veichle_url(@veichle)
    assert_response :success
  end

  test "should get edit" do
    get edit_veichle_url(@veichle)
    assert_response :success
  end

  test "should update veichle" do
    patch veichle_url(@veichle), params: { veichle: { licenceplate: @veichle.licenceplate, name: @veichle.name, position: @veichle.position, producer: @veichle.producer, user_id: @veichle.user_id } }
    assert_redirected_to veichle_url(@veichle)
  end

  test "should destroy veichle" do
    assert_difference('Veichle.count', -1) do
      delete veichle_url(@veichle)
    end

    assert_redirected_to veichles_url
  end
end
