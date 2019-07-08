require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.board = FactoryBot.build(:board)
    subject.title = Faker::Markdown.headers
    subject.done = Faker::Boolean.boolean(0.3)
    expect(subject).to be_valid
  end

  it "is not valid without a board" do
    subject.title = Faker::Markdown.headers
    expect(subject).to_not be_valid
  end

  it "is not valid without a title" do
    subject.board = FactoryBot.build(:board)
    expect(subject).to_not be_valid
  end
end
