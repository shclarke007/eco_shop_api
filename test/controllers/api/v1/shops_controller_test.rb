require "test_helper"

class Api::V1::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_shops_index_url
    assert_response :success
  end
end
