class Shoe < ActiveRecord::Base
  has_many :brands
  has_many :inventories
  has_many :stores, through: :inventories

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
