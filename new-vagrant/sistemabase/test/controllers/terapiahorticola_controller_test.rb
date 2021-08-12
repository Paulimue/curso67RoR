require "test_helper"

class TerapiahorticolaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get terapiahorticola_index_url
    assert_response :success
  end
end
