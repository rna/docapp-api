class ChangeColumnsInSchedule < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :end_date
    remove_column :schedules, :end_time
    rename_column :schedules, :start_date, :date
    rename_column :schedules, :start_time, :time
    add_column :schedules, :available, :boolean, default: true
  end
end
