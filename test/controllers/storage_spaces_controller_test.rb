require 'test_helper'

class StorageSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get storage_spaces_create_url
    assert_response :success
  end

  test "should get index" do
    get storage_spaces_index_url
    assert_response :success
  end

  test "should get edit" do
    get storage_spaces_edit_url
    assert_response :success
  end

  test "should get update" do
    get storage_spaces_update_url
    assert_response :success
  end

end
