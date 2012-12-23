class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
  
  protected
    def pinned_bookmarks
      Bookmark.find_all_by_is_pinned(true)
    end
    
    def authorize
      if session[:user] && User.find(session[:user].id)
        return
      else        
        redirect_to accounts_start_login_url
      end
    end
end
