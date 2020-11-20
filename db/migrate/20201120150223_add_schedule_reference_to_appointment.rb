class AddScheduleReferenceToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :schedule, foreign_key: true
    remove_column :appointments, :appointment_time
    remove_column :appointments, :date
  end
end
