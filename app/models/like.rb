class Like < ApplicationRecord
  after_save :increment_like_count
  belongs_to :post
  belongs_to :author
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  private

  def increment_like_count
    post.increment!(:likes_counter)
  end
end
