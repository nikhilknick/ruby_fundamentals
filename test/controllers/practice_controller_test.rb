require "test_helper"

class PracticeControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get practice_test_url
    assert_response :success
  end
end
