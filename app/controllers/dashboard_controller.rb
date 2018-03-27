class DashboardController < ApplicationController
  def dashboard
  	# Root folders
  	@folders = Folder.roots
  	@user_files = UserFile.all
  end
end
