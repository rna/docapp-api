class ChangeNumberToStringInSchedules < ActiveRecord::Migration[6.0]
  def change
    change_column :schedules, :duration, :string
  end
end
