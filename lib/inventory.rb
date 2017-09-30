class Inventory < ActiveRecord::Base
  has_many(:brands_shoes)
  has_many(:brands, through: :brands_shoes)
  has_many(:stores)
end
