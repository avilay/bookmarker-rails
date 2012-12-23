class BookmarksController < ApplicationController
  # GET /bookmarks  
  def index
    @bookmarks_active = 'active'
    user_id = session[:user].id
    @bookmarks = Bookmark.where(:user_id => user_id).paginate(:page => params[:page], :order => 'added_on desc', :per_page => 10)
    @pinned_bookmarks = pinned_bookmarks    
  end

  # GET /bookmarks/1  
  def show
    if does_not_own_bookmark?(params[:id])
      redirect_to accounts_logout_url
      return
    end
    @bookmarks_active = 'active'
    @bookmark = Bookmark.find(params[:id])
    @pinned_bookmarks = pinned_bookmarks    
  end

  # GET /bookmarks/new  
  def new
    @bookmarks_active = 'active'
    @bookmark = Bookmark.new
    @bookmark.web_page = WebPage.new
    @pinned_bookmarks = pinned_bookmarks    
  end

  # POST /bookmarks  
  def create
    @bookmark = Bookmark.new(params[:bookmark])
    @bookmark.added_on = Time.new
    @bookmark.user_id = session[:user].id
    wp = WebPage.find_by_url(@bookmark.web_page.url)
    if !wp
      wp = WebPage.create(:url => @bookmark.web_page.url)
    end
    @bookmark.web_page_id = wp.id
    
    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render action: "new"
    end
  end

  # DELETE /bookmarks/1  
  def destroy
    if does_not_own_bookmark?(params[:id])
      redirect_to accounts_logout_url
      return
    end
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_url    
  end

  # GET /bookmarks/1/edit
  def edit
    if does_not_own_bookmark?(params[:id])
      redirect_to accounts_logout_url
      return
    end
    @bookmarks_active = 'active'
    @bookmark = Bookmark.find(params[:id])
    @pinned_bookmarks = pinned_bookmarks
  end
  
  # PUT /bookmarks/1
  def update
    if does_not_own_bookmark?(params[:id])
      redirect_to accounts_logout_url
      return
    end
    @bookmark = Bookmark.find(params[:id])        
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to @bookmark, notice: 'Bookmark was successfully updated.'      
    else
      render action: "edit"      
    end    
  end

  # PUT /bookmarks/1/pin
  def pin
    if does_not_own_bookmark?(params[:id])
      redirect_to accounts_logout_url
      return
    end
    bookmark = Bookmark.find(params[:id])
    bookmark.is_pinned = true
    if bookmark.update_attributes(params[:boomark])
      redirect_to bookmark, notice: 'Bookmark was successfully pinned.'
    else
      render action: 'edit'
    end    
  end
  
  # GET /bookmarks/popular
  def popular
    @pop_bookmarks_active = 'active'
    @pop_links = WebPage.select('w.id, w.url, w.title, count(w.id) as popularity').
                  joins('as w inner join bookmarks as b on w.id = b.web_page_id').
                  group('w.id').
                  having('popularity >= 3')
    @pinned_bookmarks = pinned_bookmarks
  end
  
  def does_not_own_bookmark?(id)
    bm = Bookmark.where(:user_id => session[:user].id, :id => id)
    if bm.count == 0
      true # It is true that user does not own this bookmark
    else
      false # User does own this bookmark, so the answer to the question is 'no' aka false
    end        
  end
end
