require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end
end
