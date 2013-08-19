class UserFilesController < ApplicationController
  def index
    @user_files = UserFile.all
  end

  def new
    @user_file = UserFile.new
  end

  def create
    redirect_to user_files_path
    @user_file = UserFile.create user_file_params
  end

  private
  def user_file_params
    params.require(:user_file).permit(:name, :thing)
  end
end
