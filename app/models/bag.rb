class Bag < ActiveRecord::Base
	belongs_to :party
	has_many :bag_items
	has_many :items , through:  :bag_items
end
