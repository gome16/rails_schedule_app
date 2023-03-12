class RenemeStartdColumnToSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :start, :start_day
  end
end
