class ChangeTimeToBeStringInAppointment < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :appointment_time, :string
  end
end
