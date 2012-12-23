class AddTitleToWebPages < ActiveRecord::Migration
  def change
    add_column :web_pages, :title, :string
  end
end
