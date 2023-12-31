require 'rails_helper'

RSpec.describe ParksFacade do 
  describe 'class method' do 
    it 'converts parsed api results into poros', :vcr do
      facade = ParksFacade.parks_by_state("TN")

      expect(facade).to be_an Array
      expect(facade.first).to be_a Park
    end 
  end 
end