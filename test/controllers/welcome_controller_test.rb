require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  test "unauthenticated user should redirect to sign_in" do
    get welcome_dashboard_url
    assert_response :redirect
  end

  test "authenticated user should see dashboard" do
    log_in
    get welcome_dashboard_url
    assert_response :success
  end

end
