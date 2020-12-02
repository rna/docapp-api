require 'rails_helper'

RSpec.describe Schedule, type: :model do
  describe 'associations' do
    it { should have_many(:appointments) }
    it { should belong_to(:doctor) }
  end
end
