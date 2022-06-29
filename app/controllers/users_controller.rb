class UsersController < ApplicationController
  
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
