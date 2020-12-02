class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :schedule

  after_save do
    booked = schedule
    booked.available = false
    booked.save
  end

  def self.patient_appointments(id)
    Schedule.left_outer_joins(:appointments).where(appointments: { patient_id: id })
  end

  def self.doctor_appointments(id)
    Schedule.left_outer_joins(:appointments).where(appointments: { doctor_id: id })
  end
end
