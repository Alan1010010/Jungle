require 'test_helper'

class UserPlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_plants_index_url
    assert_response :success
  end

  test "should get show" do
    get user_plants_show_url
    assert_response :success
  end
end
