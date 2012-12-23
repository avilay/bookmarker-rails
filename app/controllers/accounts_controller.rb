class AccountsController < ApplicationController
  skip_before_filter :authorize
  
  def start_login
  end

  def login
    if user = User.authenticate(params[:email], params[:password])
      session[:user] = user
      redirect_to bookmarks_url
    else
      redirect_to accounts_start_login_url, :alert => 'Incorrect user credentials.'
    end
  end
  
  def logout
    session[:user] = nil
    redirect_to home_index_url
  end
  
  def start_register    
    @user = User.new
  end
  
  def register
    @user = User.new(params[:user])
    if @user.save
      redirect_to(bookmarks_url, :notice => 'Thanks for signing up. Start bookmarking your favorite links.')
    else
      render(:action => new)
    end    
  end
end
