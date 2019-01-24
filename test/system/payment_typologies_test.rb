require "application_system_test_case"

class PaymentTypologiesTest < ApplicationSystemTestCase
  setup do
    @payment_typology = payment_typologies(:one)
  end

  test "visiting the index" do
    visit payment_typologies_url
    assert_selector "h1", text: "Payment Typologies"
  end

  test "creating a Payment typology" do
    visit payment_typologies_url
    click_on "New Payment Typology"

    fill_in "Name", with: @payment_typology.name
    fill_in "User", with: @payment_typology.user_id
    click_on "Create Payment typology"

    assert_text "Payment typology was successfully created"
    click_on "Back"
  end

  test "updating a Payment typology" do
    visit payment_typologies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @payment_typology.name
    fill_in "User", with: @payment_typology.user_id
    click_on "Update Payment typology"

    assert_text "Payment typology was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment typology" do
    visit payment_typologies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment typology was successfully destroyed"
  end
end
