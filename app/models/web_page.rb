class WebPage < ActiveRecord::Base
  attr_accessible :last_crawled_on, :url, :bookmarks, :title
  has_many :bookmarks
end
