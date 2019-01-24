require "application_system_test_case"

class FuelsTest < ApplicationSystemTestCase
  setup do
    @fuel = fuels(:one)
  end

  test "visiting the index" do
    visit fuels_url
    assert_selector "h1", text: "Fuels"
  end

  test "creating a Fuel" do
    visit fuels_url
    click_on "New Fuel"

    fill_in "Amount", with: @fuel.amount
    fill_in "Date", with: @fuel.date
    fill_in "Name", with: @fuel.name
    fill_in "Payment typology", with: @fuel.payment_typology_id
    fill_in "Place", with: @fuel.place
    fill_in "Service station", with: @fuel.service_station_id
    click_on "Create Fuel"

    assert_text "Fuel was successfully created"
    click_on "Back"
  end

  test "updating a Fuel" do
    visit fuels_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @fuel.amount
    fill_in "Date", with: @fuel.date
    fill_in "Name", with: @fuel.name
    fill_in "Payment typology", with: @fuel.payment_typology_id
    fill_in "Place", with: @fuel.place
    fill_in "Service station", with: @fuel.service_station_id
    click_on "Update Fuel"

    assert_text "Fuel was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuel" do
    visit fuels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuel was successfully destroyed"
  end
end
