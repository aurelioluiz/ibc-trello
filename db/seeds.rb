# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  board = Board.new({
    title: Faker::Markdown.headers
  })
  if board.save
    5.times do
      Task.create({
        board_id: board.id,
        title: Faker::Markdown.emphasis,
        done: Faker::Boolean.boolean(0.3)
      })
    end
  end
end
