require 'test_helper'

class BookmarksControllerTest < ActionController::TestCase
  setup do
    @bookmark = bookmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark" do
    assert_difference('Bookmark.count') do
      post :create, bookmark: { added_on: @bookmark.added_on, name: @bookmark.name, notes: @bookmark.notes, user_id: @bookmark.user_id, web_page_id: @bookmark.web_page_id }
    end

    assert_redirected_to bookmark_path(assigns(:bookmark))
  end

  test "should show bookmark" do
    get :show, id: @bookmark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmark
    assert_response :success
  end

  test "should update bookmark" do
    put :update, id: @bookmark, bookmark: { added_on: @bookmark.added_on, name: @bookmark.name, notes: @bookmark.notes, user_id: @bookmark.user_id, web_page_id: @bookmark.web_page_id }
    assert_redirected_to bookmark_path(assigns(:bookmark))
  end

  test "should destroy bookmark" do
    assert_difference('Bookmark.count', -1) do
      delete :destroy, id: @bookmark
    end

    assert_redirected_to bookmarks_path
  end
end
