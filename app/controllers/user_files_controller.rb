class UserFilesController < ApplicationController

  def new
  	@user_file = UserFile.new
  end
end
