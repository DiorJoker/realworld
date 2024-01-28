require "test_helper"

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get article_create_url
    assert_response :success
  end

  test "should get get" do
    get article_get_url
    assert_response :success
  end

  test "should get update" do
    get article_update_url
    assert_response :success
  end

  test "should get delete" do
    get article_delete_url
    assert_response :success
  end
end
