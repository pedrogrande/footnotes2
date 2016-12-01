require 'test_helper'

class YearGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year_group = year_groups(:one)
  end

  test "should get index" do
    get year_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_year_group_url
    assert_response :success
  end

  test "should create year_group" do
    assert_difference('YearGroup.count') do
      post year_groups_url, params: { year_group: { code: @year_group.code, name: @year_group.name } }
    end

    assert_redirected_to year_group_url(YearGroup.last)
  end

  test "should show year_group" do
    get year_group_url(@year_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_year_group_url(@year_group)
    assert_response :success
  end

  test "should update year_group" do
    patch year_group_url(@year_group), params: { year_group: { code: @year_group.code, name: @year_group.name } }
    assert_redirected_to year_group_url(@year_group)
  end

  test "should destroy year_group" do
    assert_difference('YearGroup.count', -1) do
      delete year_group_url(@year_group)
    end

    assert_redirected_to year_groups_url
  end
end
