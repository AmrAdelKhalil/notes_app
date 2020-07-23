require 'test_helper'

class HyperLinkControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hyper_link_show_url
    assert_response :success
  end

end
