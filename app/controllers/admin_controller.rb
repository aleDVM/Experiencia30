class AdminController < ApplicationController
  before_action :set_admin, only: [:edit, :update, :destroy]
  def edit
  end
  def update
    @user.admin = true
    @user.update(admin_params)
    redirect_to root_path
  end

  private
  def set_admin
    @user = User.find(params[:id])
  end
def admin_params
  params.require(:user).permit(:name, :username, :admin, :email, :password)
end
end
