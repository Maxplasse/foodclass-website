class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :difficulty
      t.integer :duration
      t.string :category
      t.integer :participants_total
      t.integer :level_points
      t.datetime :start_at
      t.datetime :end_at
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
