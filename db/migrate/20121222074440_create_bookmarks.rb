class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :web_page_id
      t.string :name
      t.text :notes
      t.datetime :added_on

      t.timestamps
    end
  end
end
