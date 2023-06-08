class Comment < ApplicationRecord
  after_save :increment_comment_counter
  belongs_to :post
  belongs_to :author

  private

  def increment_comment_counter
    post.increment!(:comment_counter)
  end
end
