class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :board, foreign_key: true
      t.string :title
      t.boolean :done

      t.timestamps
    end
  end
end
