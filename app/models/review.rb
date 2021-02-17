class Review < ApplicationRecord
  belongs_to :restaurant

	validates :content, presence: true
	validates :rating, inclusion: {in: 0..5 }, numericality: { only_integer: true }
end


# rating should be an integer (FAILED - 12)
#   rating should be a number between 0 and 5 (FAILED - 13)




# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.

