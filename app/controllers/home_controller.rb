class HomeController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @home_active = 'active'
  end

  def about
    @about_active = 'active'
  end

  def contact
    @contact_active = 'active'
  end
end
