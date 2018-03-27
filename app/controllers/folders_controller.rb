class FoldersController < ApplicationController

  def new
  	@folder = Folder.new
  end

  def create
  	@folder = Folder.new(folder_params)
  	if @folder.save
  		flash[:success] = 'Folder created successfully.'
  		redirect_to @folder
  	else
  		flash[:warning] = 'Something went wrong.'
  		render 'new'
  	end
  end

  def show
  	@folder = Folder.find(params[:id])
  	# Children folders
  	@folders = @folder.children
  end

  private
  def folder_params
    params.require(:folder).permit(:name, :parent_id)
  end
end
