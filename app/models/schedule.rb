class Schedule < ApplicationRecord
  belongs_to :doctor

  def self.time_slots
    time_slots = []

    Schedule.all.each do |s|
      (s.start_time.to_i..s.end_time.to_i).step(s.duration*60).each do |time|
        time_slots << Time.at(time).utc.strftime("%H:%M")
      end
    end
    time_slots
  end
end

