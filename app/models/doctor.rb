class Doctor < ApplicationRecord
  has_many :schedules
  has_many :appointments
end
