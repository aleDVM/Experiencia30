class AdminController < ApplicationController
  before_action :set_admin, only: [:edit, :update, :destroy]
  def edit
  end
  def update
    if @user.admin == true 
      if params[:user][:admin] == "0"         
        @user.update(admin: false) 
      else
        @user.update(admin: true)
      end  
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
