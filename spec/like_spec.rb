require 'rails_helper'

RSpec.describe Like, type: :model do
    let (:author) {Author.create(name: 'Caleb', photo: 'photo.com', bio: 'Software Developer')}
    let (:post) {Post.new(title: "The Crisis of Modern School System", text: 'The school system is...', author: author)}
    subject { Comment.new(author: author, post: post) } 

    it("should validate row datas") do
    
        expect(subject.author_id).to eq(author.id)
        expect(subject.post_id).to eq(post.id)
    end
end