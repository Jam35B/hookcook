require "application_system_test_case"

class KitchensTest < ApplicationSystemTestCase
  setup do
    @kitchen = kitchens(:one)
  end

  test "visiting the index" do
    visit kitchens_url
    assert_selector "h1", text: "Kitchens"
  end

  test "should create kitchen" do
    visit kitchens_url
    click_on "New kitchen"

    fill_in "Equipment", with: @kitchen.equipment
    fill_in "Kitchen adress", with: @kitchen.kitchen_adress
    fill_in "Kitchen description", with: @kitchen.kitchen_description
    fill_in "Kitchen surface", with: @kitchen.kitchen_surface
    fill_in "Services", with: @kitchen.services
    click_on "Create Kitchen"

    assert_text "Kitchen was successfully created"
    click_on "Back"
  end

  test "should update Kitchen" do
    visit kitchen_url(@kitchen)
    click_on "Edit this kitchen", match: :first

    fill_in "Equipment", with: @kitchen.equipment
    fill_in "Kitchen adress", with: @kitchen.kitchen_adress
    fill_in "Kitchen description", with: @kitchen.kitchen_description
    fill_in "Kitchen surface", with: @kitchen.kitchen_surface
    fill_in "Services", with: @kitchen.services
    click_on "Update Kitchen"

    assert_text "Kitchen was successfully updated"
    click_on "Back"
  end

  test "should destroy Kitchen" do
    visit kitchen_url(@kitchen)
    click_on "Destroy this kitchen", match: :first

    assert_text "Kitchen was successfully destroyed"
  end
end
