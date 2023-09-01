require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "should create service" do
    visit services_url
    click_on "New service"

    fill_in "Barbecue", with: @service.barbecue
    fill_in "Childish games", with: @service.childish_games
    fill_in "Green areas", with: @service.green_areas
    fill_in "Gym", with: @service.gym
    fill_in "Parking lots", with: @service.parking_lots
    fill_in "Pet friendly", with: @service.pet_friendly
    fill_in "Pool", with: @service.pool
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "should update Service" do
    visit service_url(@service)
    click_on "Edit this service", match: :first

    fill_in "Barbecue", with: @service.barbecue
    fill_in "Childish games", with: @service.childish_games
    fill_in "Green areas", with: @service.green_areas
    fill_in "Gym", with: @service.gym
    fill_in "Parking lots", with: @service.parking_lots
    fill_in "Pet friendly", with: @service.pet_friendly
    fill_in "Pool", with: @service.pool
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "should destroy Service" do
    visit service_url(@service)
    click_on "Destroy this service", match: :first

    assert_text "Service was successfully destroyed"
  end
end
