require 'test_helper'

class CollaboratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get collaborators_update_url
    assert_response :success
  end

  test "should get index" do
    get collaborators_index_url
    assert_response :success
  end

end
