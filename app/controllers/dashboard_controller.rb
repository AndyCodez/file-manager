class DashboardController < ApplicationController
  def dashboard
  	# Root folders
  	@folders = Folder.roots
  end
end
