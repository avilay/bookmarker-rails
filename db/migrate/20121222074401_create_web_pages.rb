class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :url
      t.datetime :last_crawled_on

      t.timestamps
    end
  end
end
