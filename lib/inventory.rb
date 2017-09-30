class Inventory < ActiveRecord::Base
  has_many(:shoes)
  has_many(:stores)
end
