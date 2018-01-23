class AdminController < ApplicationController
  before_action :set_admin, only: [:edit, :update, :destroy]
  def edit
  end
  def update
    if @user.admin == true          
      @user.update(admin: false)
     
      redirect_to edit_admin_path
    else
      @user.update(admin: true)
      redirect_to root_path   
    end     
  end

  private
  def set_admin
    @user = User.find(params[:id])
  end
def admin_params
  params.require(:user).permit(:name, :username, :admin, :email, :password)
end
end
