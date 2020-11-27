class AddScheduleIdInAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :schedule, foreign_key: true, index: {unique: true}
  end
end
