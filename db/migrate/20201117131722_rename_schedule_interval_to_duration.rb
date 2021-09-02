class RenameScheduleIntervalToDuration < ActiveRecord::Migration[6.0]
  def change
    rename_column :schedules, :interval, :duration
  end
end
