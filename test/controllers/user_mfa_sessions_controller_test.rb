require 'test_helper'

class UserMfaSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get UserMfaSessionController" do
    get user_mfa_sessions_UserMfaSessionController_url
    assert_response :success
  end

end
