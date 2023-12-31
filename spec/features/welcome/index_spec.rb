require 'rails_helper'

RSpec.describe 'Welcome', type: :feature do
  describe 'Welcome root page' do
    it 'exists' do 
      visit '/'

      expect(page).to have_link('Park Search')
      expect(page).to have_button('Find Parks')
    end

    describe 'search for activities' do
      it 'suggests an activity based off number of participants', :vcr do 
        visit '/'

        select 'Tennessee', from: :state
        click_button 'Find Parks'
        expect(current_path).to eq(parks_path)
      end
    end
  end
end