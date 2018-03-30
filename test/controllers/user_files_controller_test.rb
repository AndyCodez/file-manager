require 'test_helper'

class UserFilesControllerTest < ActionDispatch::IntegrationTest

	test "should get new" do 
		get new_user_file_path
		assert :success
	end
end
