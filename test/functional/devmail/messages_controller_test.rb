require 'test_helper'

module Devmail
  class MessagesControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
