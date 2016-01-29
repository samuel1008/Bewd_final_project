require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get front" do
    get :front
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
