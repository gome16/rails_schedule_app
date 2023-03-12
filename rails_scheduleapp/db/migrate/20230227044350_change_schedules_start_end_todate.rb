class ChangeSchedulesStartEndTodate < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :start, :date, using: "start::date"
    change_column :schedules, :end, :date, using: "end::date"
  end

  def down
    change_column :schedules, :start, :integer, using: "start::integer"
    change_column :schedules, :end, :integer, using: "end::integer"
  end
end
