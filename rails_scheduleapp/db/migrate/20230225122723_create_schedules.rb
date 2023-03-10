class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.integer :start
      t.integer :end
      t.string :allday
      t.string :memo

      t.timestamps
    end
  end
end
