FactoryBot.define do

  factory :board do
    title { Faker::Markdown.headers }
  end

  factory :task do
    board
    title { Faker::Markdown.emphasis }
    done { Faker::Boolean.boolean(0.3) }
  end

end
