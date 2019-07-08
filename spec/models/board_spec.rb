require 'rails_helper'

RSpec.describe Board, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.title = Faker::Markdown.headers
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    expect(subject).to_not be_valid
  end
end
