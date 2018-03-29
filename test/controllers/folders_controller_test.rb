require 'test_helper'

class FoldersControllerTest < ActionDispatch::IntegrationTest

	test "should get new" do 
		get new_folder_path
		assert :success
	end
end
