class UserFilesController < ApplicationController

  def new
  	@user_file = UserFile.new
  end

  def create
  	@user_file = UserFile.new(user_file_params)
  	if @user_file.save
  		flash[:success] = "File successfully uploaded."
  		redirect_to root_path
  	else
  		flash[:warning] = "Something went wrong. File not uploaded."
  		render 'new'
  	end
  end

  private
  def user_file_params
  	params.require(:user_file).permit(:file)
  end
end
