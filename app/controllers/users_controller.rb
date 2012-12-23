class UsersController < ApplicationController  
  
  # GET /users/1
  def show
    @user = User.find(params[:id])
  end
  
  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])    
  end
  
  # PUT /users/1
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      render :action => 'show'
    else
      render :action => 'edit'
    end    
  end
end











