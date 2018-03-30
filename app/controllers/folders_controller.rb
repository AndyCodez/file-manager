class FoldersController < ApplicationController

  def new
  	@folder = Folder.new
  end

  def create
  	@folder = Folder.new(folder_params)
  	if @folder.save
  		flash[:success] = 'Folder created successfully.'
  		@folder.parent ? (redirect_to @folder.parent) : (redirect_to root_path)
  	else
  		render 'new'
  	end
  end

  def show
  	@folder = Folder.find(params[:id])

  	# Children folders and associated user files
    @folders = @folder.children
    @user_files = @folder.user_files
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    flash[:success] = "Folder deleted."
    redirect_to request.referrer || root_url
  end

  private
  def folder_params
    params.require(:folder).permit(:name, :parent_id)
  end
end
