require 'rails_helper'

RSpec.describe Api::V1::SchedulesController, type: :controller do
  describe 'GET#index' do
    it 'returns success' do
      new_user = Doctor.create(email: 'abc@abc.com', password: 'abc')
      get :index, params: { doctor_id: new_user.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET#show' do
    it 'returns success' do
      new_user = Doctor.create(email: 'abc@abc.com', password: 'abc')
      new_schedule = Schedule.create(date: '30/11/20', time: '11:00', duration: '30', doctor_id: new_user.id)
      get :show, params: { doctor_id: new_user.id, id: new_schedule.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST#create ' do
    it 'returns unauthorized without login' do
      new_user = Doctor.create(email: 'abc@abc.com', password: 'abc')
      post :create,
           params: { doctor_id: new_user.id,
                     schedule: { start_date: '30/11/20', start_time: '11:00', end_date: '30/11/20',
                                 end_time: '15:00', duration: '60' } }
      expect(response.status).to eq(401)
    end
  end
end
