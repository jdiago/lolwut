class UserFilesController < ApplicationController
  def index
    @files = UserFile.all
  end

  def new
    @file = UserFile.new
  end

  def create
    @file = UserFile.create user_file_params
    redirect_to user_files_path
  end

  private
  def user_file_params
    params.require(:user_file).permit(:name, :thing)
  end
end
