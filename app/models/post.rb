class Post < ApplicationRecord
    has_many :comment, counter_cache: :post_counter
    belongs_to :author
    has_many :like
    validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :comment_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :title, presence: true, length: {maximum: 250}

    def top_5_comment
        comment.order(created_by: :desc).limit(5)
    end

    def increment_post_counter
    author.increment!(:post_counter)
    end
end
