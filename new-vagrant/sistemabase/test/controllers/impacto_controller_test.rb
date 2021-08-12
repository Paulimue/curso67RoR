require "test_helper"

class ImpactoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get impacto_index_url
    assert_response :success
  end
end
