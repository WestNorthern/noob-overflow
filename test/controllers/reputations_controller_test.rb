require 'test_helper'

class ReputationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reputations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get reputations_destroy_url
    assert_response :success
  end

end
