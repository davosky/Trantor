require 'test_helper'

class PaymentTypologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_typology = payment_typologies(:one)
  end

  test "should get index" do
    get payment_typologies_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_typology_url
    assert_response :success
  end

  test "should create payment_typology" do
    assert_difference('PaymentTypology.count') do
      post payment_typologies_url, params: { payment_typology: { name: @payment_typology.name, user_id: @payment_typology.user_id } }
    end

    assert_redirected_to payment_typology_url(PaymentTypology.last)
  end

  test "should show payment_typology" do
    get payment_typology_url(@payment_typology)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_typology_url(@payment_typology)
    assert_response :success
  end

  test "should update payment_typology" do
    patch payment_typology_url(@payment_typology), params: { payment_typology: { name: @payment_typology.name, user_id: @payment_typology.user_id } }
    assert_redirected_to payment_typology_url(@payment_typology)
  end

  test "should destroy payment_typology" do
    assert_difference('PaymentTypology.count', -1) do
      delete payment_typology_url(@payment_typology)
    end

    assert_redirected_to payment_typologies_url
  end
end
