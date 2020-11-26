class Doctor < ApplicationRecord
  has_secure_password

  has_many :schedules
  has_many :appointments

  VALID_EMAIL_ADDRESS = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: true,
                    format: { with: VALID_EMAIL_ADDRESS },
                    length: { minimum: 6, maximum: 100 }
end
