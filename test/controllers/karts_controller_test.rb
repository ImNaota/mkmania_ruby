require "test_helper"

class KartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kart = karts(:one)
  end

  test "should get index" do
    get karts_url
    assert_response :success
  end

  test "should get new" do
    get new_kart_url
    assert_response :success
  end

  test "should create kart" do
    assert_difference("Kart.count") do
      post karts_url, params: { kart: { color: @kart.color, description: @kart.description, image: @kart.image, maneuverability: @kart.maneuverability, size: @kart.size, speed: @kart.speed } }
    end

    assert_redirected_to kart_url(Kart.last)
  end

  test "should show kart" do
    get kart_url(@kart)
    assert_response :success
  end

  test "should get edit" do
    get edit_kart_url(@kart)
    assert_response :success
  end

  test "should update kart" do
    patch kart_url(@kart), params: { kart: { color: @kart.color, description: @kart.description, image: @kart.image, maneuverability: @kart.maneuverability, size: @kart.size, speed: @kart.speed } }
    assert_redirected_to kart_url(@kart)
  end

  test "should destroy kart" do
    assert_difference("Kart.count", -1) do
      delete kart_url(@kart)
    end

    assert_redirected_to karts_url
  end
end
