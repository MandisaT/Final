class BagItem < ActiveRecord::Base
	belongs_to :bag
	belongs_to :item
end
