require 'rails_helper'


RSpec.describe Post, type: :model do
  let(:author) { Author.create(name: 'Caleb', photo: 'photo.com', bio: 'Full Stack Dev') }
  subject { Post.new(title: 'The Crisis of Modern School System', text: 'The school system is...', author:) }
  before { subject.save }

  it 'Should validate the rows data' do
    title = subject.title
    text = subject.text
    expect(title).to eq('The Crisis of Modern School System')
    expect(text).to eq('The school system is...')
  end
end
