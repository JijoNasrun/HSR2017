require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get shownew" do
    get reports_shownew_url
    assert_response :success
  end

  test "should get create" do
    get reports_create_url
    assert_response :success
  end

  test "should get update" do
    get reports_update_url
    assert_response :success
  end

end
