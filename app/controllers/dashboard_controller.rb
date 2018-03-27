class DashboardController < ApplicationController
  def dashboard
  	# Root folders and Root files
  	@folders = Folder.roots
  	@user_files = UserFile.roots
  end
end
