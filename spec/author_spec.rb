require 'rails_helper'

RSpec.describe Author, type: :model do
subject {Author.new(name: 'Caleb', photo: 'photo.com', bio: 'Full Stack Dev') }
before { subject.save }
it "should validate rows data" do
name = subject.name
photo = subject.photo
bio = subject.bio
expect(subject.name).to eq('Caleb')
expect(subject.photo).to eq('photo.com')
expect(subject.bio).to eq('Full Stack Dev')

# Check that the timestamps exist
expect(subject.created_at).not_to be_nil
expect(subject.updated_at).not_to be_nil
end
end