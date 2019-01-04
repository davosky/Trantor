require 'test_helper'

class TransportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_type = transport_types(:one)
  end

  test "should get index" do
    get transport_types_url
    assert_response :success
  end

  test "should get new" do
    get new_transport_type_url
    assert_response :success
  end

  test "should create transport_type" do
    assert_difference('TransportType.count') do
      post transport_types_url, params: { transport_type: { name: @transport_type.name, position: @transport_type.position } }
    end

    assert_redirected_to transport_type_url(TransportType.last)
  end

  test "should show transport_type" do
    get transport_type_url(@transport_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_transport_type_url(@transport_type)
    assert_response :success
  end

  test "should update transport_type" do
    patch transport_type_url(@transport_type), params: { transport_type: { name: @transport_type.name, position: @transport_type.position } }
    assert_redirected_to transport_type_url(@transport_type)
  end

  test "should destroy transport_type" do
    assert_difference('TransportType.count', -1) do
      delete transport_type_url(@transport_type)
    end

    assert_redirected_to transport_types_url
  end
end
