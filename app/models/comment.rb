class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :author
    validates :comment_counter, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    
    def increment_comment_counter
    post.increment!(:comment_counter)
    end
end
