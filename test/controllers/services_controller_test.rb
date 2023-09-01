require "test_helper"

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference("Service.count") do
      post services_url, params: { service: { barbecue: @service.barbecue, childish_games: @service.childish_games, green_areas: @service.green_areas, gym: @service.gym, parking_lots: @service.parking_lots, pet_friendly: @service.pet_friendly, pool: @service.pool } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { barbecue: @service.barbecue, childish_games: @service.childish_games, green_areas: @service.green_areas, gym: @service.gym, parking_lots: @service.parking_lots, pet_friendly: @service.pet_friendly, pool: @service.pool } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference("Service.count", -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
