class ChangeSchedulesAlldayTOboolean < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :allday, :boolean, using: "allday::boolean"
  end

  def down
    change_column :schedules, :allday, :string, using: "allday::string"
  end
end
