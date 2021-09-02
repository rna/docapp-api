class ChangeDateToStringInSchedules < ActiveRecord::Migration[6.0]
  def change
    change_column :schedules, :date, :string
  end
end
