class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :brands, through: :brands_shoes
  # has_many :inventories, through: :brands_shoes
  # has_many :stores, through: :inventories

  validates(:shoe, {:presence => true, :length => {:maximum => 100}})
  validates(:shoe, uniqueness: {case_sensitive: false})
  before_save(:titlecase)

# private
#   def titlecase
#     ignore = %w( the of a and )
#     words = shoe.split(' ')
#     words.map do |word|
#       word = word.downcase
#       if ignore.include?(word)
#         word
#       else
#         word.capitalize
#       end
#     end.join(" ")
#   end
end
