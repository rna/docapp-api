require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { should belong_to(:patient) }
    it { should belong_to(:doctor) }
    it { should belong_to(:schedule) }
  end
end
