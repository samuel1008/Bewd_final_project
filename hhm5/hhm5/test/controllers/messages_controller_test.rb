require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get sms" do
    get :sms
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get client" do
    get :client
    assert_response :success
  end

end
