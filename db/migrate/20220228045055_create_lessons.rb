class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :category
      t.string :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
