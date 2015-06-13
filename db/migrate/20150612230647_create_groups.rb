class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.date    :start_date
      t.date    :end_date
      t.string  :weekday
      t.time    :start_time
      t.time    :end_time
      
      t.timestamps null: false
    end
  end
end
