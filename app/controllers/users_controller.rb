class UsersController < ApplicationController
  # Manual Authentication with Devise feature
  # def index
  #   if current_user.user_type == 'admin'
  #   @users = User.order(created_at: :asc)
  #   else
  #     redirect_to root_path, alert: 'not_authorized'
  #   end 
  # end

  def index
    
    @users = User.order(created_at: :asc)
   
  end

  def show
    @users= User.find(params[:id])
  end
  def destroy
    
    @users = User.find(params[:id])
    @users.destroy

    redirect_to @users
  end
end
