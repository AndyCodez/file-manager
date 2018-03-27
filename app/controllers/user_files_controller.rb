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

  def destroy
    user_file = UserFile.find(params[:id])
    user_file.destroy
    flash[:success] = "File deleted."
    redirect_to request.referrer || root_url
  end

  private
  def user_file_params
  	params.require(:user_file).permit(:file, :folder_id)
  end
end
