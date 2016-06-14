class Item < ActiveRecord::Base
	belongs_to :party
	has_many :bags , through:  :bag_items
end
