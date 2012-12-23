class Bookmark < ActiveRecord::Base
  attr_accessible :added_on, :name, :notes, :user_id, :web_page_id, :web_page, :user, :is_pinned, :web_page_attributes  
  belongs_to :web_page
  belongs_to :user
  accepts_nested_attributes_for :web_page  
end
