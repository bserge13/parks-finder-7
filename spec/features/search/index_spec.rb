require 'rails_helper'

RSpec.describe 'Search', type: :feature do
  describe 'Index results page', :vcr do
    it 'exists with attributes' do 
      visit '/'

      select 'Tennessee', from: :state
      click_button 'Find Parks'

      expect(page).to have_content('Results for Parks Search in TN')

      within '#park' do 
        expect(page).to have_content('Directions')
        expect(page).to have_content('Hours')
        expect(page).to have_content('Great Smoky Mountains National Park')
        expect(page).to have_content("this is America's most visited national park")
      end
    end 
  end
end