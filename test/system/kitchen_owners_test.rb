require "application_system_test_case"

class KitchenOwnersTest < ApplicationSystemTestCase
  setup do
    @kitchen_owner = kitchen_owners(:one)
  end

  test "visiting the index" do
    visit kitchen_owners_url
    assert_selector "h1", text: "Kitchen owners"
  end

  test "should create kitchen owner" do
    visit kitchen_owners_url
    click_on "New kitchen owner"

    fill_in "Kitchen adress", with: @kitchen_owner.kitchen_adress
    fill_in "Kitchen mail", with: @kitchen_owner.kitchen_mail
    fill_in "Kitchen name", with: @kitchen_owner.kitchen_name
    fill_in "Kitchen number", with: @kitchen_owner.kitchen_number
    fill_in "String", with: @kitchen_owner.string
    click_on "Create Kitchen owner"

    assert_text "Kitchen owner was successfully created"
    click_on "Back"
  end

  test "should update Kitchen owner" do
    visit kitchen_owner_url(@kitchen_owner)
    click_on "Edit this kitchen owner", match: :first

    fill_in "Kitchen adress", with: @kitchen_owner.kitchen_adress
    fill_in "Kitchen mail", with: @kitchen_owner.kitchen_mail
    fill_in "Kitchen name", with: @kitchen_owner.kitchen_name
    fill_in "Kitchen number", with: @kitchen_owner.kitchen_number
    fill_in "String", with: @kitchen_owner.string
    click_on "Update Kitchen owner"

    assert_text "Kitchen owner was successfully updated"
    click_on "Back"
  end

  test "should destroy Kitchen owner" do
    visit kitchen_owner_url(@kitchen_owner)
    click_on "Destroy this kitchen owner", match: :first

    assert_text "Kitchen owner was successfully destroyed"
  end
end
