class DashboardController < ApplicationController
  def dashboard
  	# Root folders
  	@folders = Folder.roots
  	@user_files = UserFile.where(folder_id: nil)
  end
end
