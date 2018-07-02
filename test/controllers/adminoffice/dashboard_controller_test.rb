require 'test_helper'

class Adminoffice::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adminoffice_dashboard_index_url
    assert_response :success
  end

end
