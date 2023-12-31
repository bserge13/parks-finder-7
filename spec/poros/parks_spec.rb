require 'rails_helper'

RSpec.describe Park do 
  before :each do 
    @park = Park.new({
      description: "Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today.",
      directionsInfo: "36 to Rt. 172 south to Greeneville. From I-81N take exit 23 to Rt. 11E north to Greeneville.",
      id: "2ED6E071-57AA-4B08-8DDA-5CB09FBB75C8",
      fullName: "Andrew Johnson National Historic Site",
      operatingHours: 
        [{exceptions: 
            [ {exceptionHours: {},  startDate: "2024-12-25", name: "Christmas Day", endDate: "2024-12-25"},
              {exceptionHours: {}, startDate: "2024-01-01", name: "Closed New Year's Day", endDate: "2024-01-01"},
              {exceptionHours: {}, startDate: "2024-01-01", name: "New Year's Day", endDate: "2024-01-01"},
              {exceptionHours: {saturday: "9:00AM - 4:00PM"}, startDate: "2024-11-11", name: "Open for Veterans Day", endDate: "2024-11-11"},
              {exceptionHours: {}, startDate: "2024-11-28", name: "Thanksgiving Day", endDate: "2024-11-28"},
              {exceptionHours: {}, startDate: "2024-11-28", name: "Closed for Thanksgiving", endDate: "2024-11-28"
            }],
        description: 
          "Summer Hours: Generally open daily from 9 am to 4pm Winter/Spring Hours: Generally open Wednesday through Sunday from 9 am to 4 pm. The historic Andrew Johnson Homestead, 209 South Main Street may be open by guided tour at 10:00, 11:00, 2:00 & 3:00, based on staffing. Tours are limited to 10. Tickets are available at the Visitor Center until 15 minutes prior to tour time. Check with Visitor Center desk for availability, as schedule modifications are sometimes necessary.",
        standardHours: {wednesday: "9:00AM - 4:00PM", monday: "Closed", thursday: "9:00AM - 4:00PM", sunday: "9:00AM - 4:00PM", tuesday: "Closed", friday: "9:00AM - 4:00PM", saturday: "9:00AM - 4:00PM"},
        name: "Andrew Johnson National Historic Site"
      }]
    })
  end

  describe 'creates movie object' do
    it 'initializes with attributes' do
      expect(@park).to be_a Park
      expect(@park.id).to be_a String
      expect(@park.park_name).to eq('Andrew Johnson National Historic Site')
      expect(@park.description).to be_a String
      expect(@park.description).to eq("Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today.")
      expect(@park.directions).to be_a String
      expect(@park.directions).to eq('36 to Rt. 172 south to Greeneville. From I-81N take exit 23 to Rt. 11E north to Greeneville.')
      expect(@park.total_hours).to be_a Hash
    end
  end

  describe '#hours' do
    it 'converts array of key/value pairs into string values' do
      expect(@park.hours).to be_an Array 
      expect(@park.hours).to eq(["Wednesday: 9:00AM - 4:00PM", "Monday: Closed", "Thursday: 9:00AM - 4:00PM", "Sunday: 9:00AM - 4:00PM", "Tuesday: Closed", "Friday: 9:00AM - 4:00PM", "Saturday: 9:00AM - 4:00PM"])
    end
  end
end