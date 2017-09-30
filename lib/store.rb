class Store < ActiveRecord::Base
  belongs_to :inventories
  belongs_to :shoes
  belongs_to :brands

  validates(:store, {:presence => true, :length => {:maximum => 100}})
  validates(:store, uniqueness: {case_sensitive: false})
  before_save(:titlecase)


# private
#   def titlecase
#     ignore = %w( the of a and )
#     words = store.split(' ')
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
