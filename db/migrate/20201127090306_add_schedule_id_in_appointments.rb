class AddScheduleIdInAppointments < ActiveRecord::Migration[6.0]
  def change
    if column_exists? :appointments, :schedule_id
      remove_column :appointments, :schedule_id
    end
    add_reference :appointments, :schedule, foreign_key: true, index: {unique: true}
  end
end
