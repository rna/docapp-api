class Doctor < ApplicationRecord
  has_secure_password

  has_many :schedules
  has_many :appointments
end
