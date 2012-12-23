class AddIsPinnedToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :is_pinned, :boolean
  end
end
