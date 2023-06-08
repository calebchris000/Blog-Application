class Post < ApplicationRecord
  after_save :increment_post_counter

  has_many :comments, counter_cache: :post_counter
  belongs_to :author
  has_many :likes
  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def top_5_comment
    comments.order(created_at: :desc).limit(5)
  end

  private

  def increment_post_counter
    author.increment!(:post_counter)
  end
end
