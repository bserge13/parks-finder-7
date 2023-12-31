require 'rails_helper'

RSpec.describe ParksService do
  describe 'class methods' do
    it '.conn', :vcr do
      expect(ParksService.conn).to be_a(Faraday::Connection)
    end

    it '.states_parks_search', :vcr do 
      tn = ParksService.states_parks_search("TN")
      expect(tn).to be_a Hash
      expect(tn[:data].count).to eq(15)
      expect(tn[:data][0]).to have_key(:fullName)
      expect(tn[:data][0]).to have_key(:description)
      expect(tn[:data][0]).to have_key(:directionsInfo)
      expect(tn[:data][0]).to have_key(:operatingHours)
    end
  end 
end 
