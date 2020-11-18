require 'rails_helper'

RSpec.describe PatientsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/patients').to route_to('patients#index')
    end

    it 'routes to #show' do
      expect(get: '/patients/1').to route_to('patients#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/patients').to route_to('patients#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/patients/1').to route_to('patients#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/patients/1').to route_to('patients#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/patients/1').to route_to('patients#destroy', id: '1')
    end
  end
end
