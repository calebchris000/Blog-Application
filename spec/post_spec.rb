require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:author) { Author.new(name: 'Caleb', photo: 'photo.com', bio: 'Full Stack Dev') }
  subject do
    Post.create(title: 'The Crisis of Modern School System', text: 'The school system is...', author: author.id)
  end

  it 'Should validate the rows data' do
    title = subject.title
    text = subject.text
    expect(title).to eq('The Crisis of Modern School System')
    expect(text).to eq('The school system is...')
  end

  it 'should assert its methods' do
    expect(subject.top_5_comment).not_to be_nil
  end
end
