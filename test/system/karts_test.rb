require "application_system_test_case"

class KartsTest < ApplicationSystemTestCase
  setup do
    @kart = karts(:one)
  end

  test "visiting the index" do
    visit karts_url
    assert_selector "h1", text: "Karts"
  end

  test "should create kart" do
    visit karts_url
    click_on "New kart"

    fill_in "Color", with: @kart.color
    fill_in "Description", with: @kart.description
    fill_in "Image", with: @kart.image
    fill_in "Maneuverability", with: @kart.maneuverability
    fill_in "Size", with: @kart.size
    fill_in "Speed", with: @kart.speed
    click_on "Create Kart"

    assert_text "Kart was successfully created"
    click_on "Back"
  end

  test "should update Kart" do
    visit kart_url(@kart)
    click_on "Edit this kart", match: :first

    fill_in "Color", with: @kart.color
    fill_in "Description", with: @kart.description
    fill_in "Image", with: @kart.image
    fill_in "Maneuverability", with: @kart.maneuverability
    fill_in "Size", with: @kart.size
    fill_in "Speed", with: @kart.speed
    click_on "Update Kart"

    assert_text "Kart was successfully updated"
    click_on "Back"
  end

  test "should destroy Kart" do
    visit kart_url(@kart)
    click_on "Destroy this kart", match: :first

    assert_text "Kart was successfully destroyed"
  end
end
