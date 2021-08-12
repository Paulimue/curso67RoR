require "test_helper"

class SuscripcionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get suscripcion_index_url
    assert_response :success
  end
end
