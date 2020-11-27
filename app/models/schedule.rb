class Schedule < ApplicationRecord
  belongs_to :doctor
  has_one :appointment
end
