class Author < ApplicationRecord
  has_many :post
  has_many :comment
  has_many :like


  def last_3_post
    post.order(created_at: :desc).limit(3)
  end
end
