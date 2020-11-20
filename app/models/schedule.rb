class Schedule < ApplicationRecord
  belongs_to :doctor

  def self.time_slots
    time_slots = {}

    Schedule.all.each do |s|
      time_slots[s.doctor_id] = [] unless time_slots[s.doctor_id]
      (Time.parse(s.start_time).to_i..Time.parse(s.end_time).to_i).step(s.duration * 60).each do |time|
        slot = Time.at(time).strftime('%D %H:%M')
        time_slots[s.doctor_id] << slot unless time_slots[s.doctor_id].include?(slot)
      end
    end
    time_slots
  end
end
