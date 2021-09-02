require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value('hi@abc.com').for(:email) }
    it { should_not allow_value('abc.com').for(:email) }
    it { should validate_length_of(:email).is_at_most(100) }
  end

  describe 'associations' do
    it { should have_many(:appointments) }
  end
end
