require "application_system_test_case"

class ServiceStationsTest < ApplicationSystemTestCase
  setup do
    @service_station = service_stations(:one)
  end

  test "visiting the index" do
    visit service_stations_url
    assert_selector "h1", text: "Service Stations"
  end

  test "creating a Service station" do
    visit service_stations_url
    click_on "New Service Station"

    fill_in "Address", with: @service_station.address
    fill_in "City", with: @service_station.city
    fill_in "Country", with: @service_station.country
    fill_in "Name", with: @service_station.name
    fill_in "Province", with: @service_station.province
    fill_in "Vat number", with: @service_station.vat_number
    fill_in "Zip", with: @service_station.zip
    click_on "Create Service station"

    assert_text "Service station was successfully created"
    click_on "Back"
  end

  test "updating a Service station" do
    visit service_stations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @service_station.address
    fill_in "City", with: @service_station.city
    fill_in "Country", with: @service_station.country
    fill_in "Name", with: @service_station.name
    fill_in "Province", with: @service_station.province
    fill_in "Vat number", with: @service_station.vat_number
    fill_in "Zip", with: @service_station.zip
    click_on "Update Service station"

    assert_text "Service station was successfully updated"
    click_on "Back"
  end

  test "destroying a Service station" do
    visit service_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service station was successfully destroyed"
  end
end
