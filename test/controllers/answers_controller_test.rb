require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get answers_index_url
    assert_response :success
  end

  test "should get new" do
    get answers_new_url
    assert_response :success
  end

  test "should get create" do
    get answers_create_url
    assert_response :success
  end

  test "should get show" do
    get answers_show_url
    assert_response :success
  end

  test "should get edit" do
    get answers_edit_url
    assert_response :success
  end

  test "should get update" do
    get answers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get answers_destroy_url
    assert_response :success
  end

end
