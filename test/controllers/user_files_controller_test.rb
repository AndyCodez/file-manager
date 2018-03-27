require 'test_helper'

class UserFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_files_new_url
    assert_response :success
  end

end
