require 'rails_helper'

RSpec.describe Api::V1::PatientsController, type: :controller do
  describe 'GET#index' do
    it 'returns success' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET#show' do
    it 'returns success' do
      Patient.create(email: 'abc@abc.com', password: 'abc')
      get :show, params: { id: 1 }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST#create ' do
    it 'returns success' do
      post :create, params: { patient: { email: 'abc@abc.com', password: 'abc' } }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST#login ' do
    it 'returns success' do
      post :create, params: { patient: { email: 'abc@abc.com', password: 'abc' } }
      post :login, params: { patient: { email: 'abc@abc.com', password: 'abc' } }
      expect(response.status).to eq(200)
    end

    it 'returns unauthorized' do
      post :create, params: { patient: { email: 'abc@abc.com', password: 'abc' } }
      post :login, params: { patient: { email: 'a@abc.com', password: 'abc' } }
      expect(response.body['error']).to eq('error')
    end
  end
end
