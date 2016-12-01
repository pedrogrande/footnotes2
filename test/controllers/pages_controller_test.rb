require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get my_quiz" do
    get pages_my_quiz_url
    assert_response :success
  end

  test "should get admin" do
    get pages_admin_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
