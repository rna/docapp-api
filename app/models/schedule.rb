class Schedule < ApplicationRecord
  belongs_to :doctor

  def self.time_slots
    time_slots = []

    Schedule.all.each do |s|
      (s.start_time.to_i..s.end_time.to_i).step(1800).each do |time|
        time_slots << Time.at(time)
      end
    end
    time_slots
  end
end
