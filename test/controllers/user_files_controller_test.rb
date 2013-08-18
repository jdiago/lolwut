require 'test_helper'

class UserFilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new file" do
    user_file_params = FactoryGirl.attributes_for :user_file
    assert_difference('UserFile.all.count') do
      post :create, user_file: user_file_params
    end
    assert_redirected_to user_files_path
  end
end
