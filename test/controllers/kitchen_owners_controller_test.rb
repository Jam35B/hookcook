require "test_helper"

class KitchenOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitchen_owner = kitchen_owners(:one)
  end

  test "should get index" do
    get kitchen_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_kitchen_owner_url
    assert_response :success
  end

  test "should create kitchen_owner" do
    assert_difference("KitchenOwner.count") do
      post kitchen_owners_url, params: { kitchen_owner: { kitchen_adress: @kitchen_owner.kitchen_adress, kitchen_mail: @kitchen_owner.kitchen_mail, kitchen_name: @kitchen_owner.kitchen_name, kitchen_number: @kitchen_owner.kitchen_number, string: @kitchen_owner.string } }
    end

    assert_redirected_to kitchen_owner_url(KitchenOwner.last)
  end

  test "should show kitchen_owner" do
    get kitchen_owner_url(@kitchen_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitchen_owner_url(@kitchen_owner)
    assert_response :success
  end

  test "should update kitchen_owner" do
    patch kitchen_owner_url(@kitchen_owner), params: { kitchen_owner: { kitchen_adress: @kitchen_owner.kitchen_adress, kitchen_mail: @kitchen_owner.kitchen_mail, kitchen_name: @kitchen_owner.kitchen_name, kitchen_number: @kitchen_owner.kitchen_number, string: @kitchen_owner.string } }
    assert_redirected_to kitchen_owner_url(@kitchen_owner)
  end

  test "should destroy kitchen_owner" do
    assert_difference("KitchenOwner.count", -1) do
      delete kitchen_owner_url(@kitchen_owner)
    end

    assert_redirected_to kitchen_owners_url
  end
end
