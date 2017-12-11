require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get addform" do
    get users_addform_url
    assert_response :success
  end

  test "should get display" do
    get users_display_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get total" do
    get users_total_url
    assert_response :success
  end

end
