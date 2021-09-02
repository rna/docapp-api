class RenameAppointmentsDurationToAppointmentTime < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :duration, :appointment_time
  end
end
