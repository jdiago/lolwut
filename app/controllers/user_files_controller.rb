class UserFilesController < ApplicationController
  def index
    @user_files = UserFile.all
  end

  def new
    @user_file = UserFile.new
  end

  def create
    @user_file = UserFile.create user_file_params
    respond_to do |format|
      format.html { redirect_to user_files_path }
      format.js
    end
  end

  private
  def user_file_params
    params.require(:user_file).permit(:name, :thing)
  end
end
