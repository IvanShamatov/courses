class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :title
      t.text    :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
