require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get home" do
    get :about
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

end
