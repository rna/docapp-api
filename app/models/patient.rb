class Patient < ApplicationRecord
  has_secure_password

  has_many :appointments
end
