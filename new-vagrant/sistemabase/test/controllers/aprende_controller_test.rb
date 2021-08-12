require "test_helper"

class AprendeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aprende_index_url
    assert_response :success
  end
end
