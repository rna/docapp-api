class AddScheduleReferenceToAppointment < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :appointment_time
    remove_column :appointments, :date
  end
end
