require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get dashboards_dashboard_url
    assert_response :success
  end
end
