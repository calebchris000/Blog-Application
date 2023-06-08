require 'rails_helper'

RSpec.describe Author, type: :model do
  subject { Author.create(name: 'Caleb', photo: 'photo.com', bio: 'Full Stack Dev') }

  it 'should validate rows data' do
    subject.name
    subject.photo
    subject.bio
    expect(subject.name).to eq('Caleb')
    expect(subject.photo).to eq('photo.com')
    expect(subject.bio).to eq('Full Stack Dev')
  end

  it 'should assert its methods' do
    expect(subject.last_3_post).not_to be_nil
  end
end
