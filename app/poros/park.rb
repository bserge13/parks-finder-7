class Park 
  attr_reader :id,
              :park_name,
              :description,
              :directions,
              :total_hours,
              :state

  def initialize(parks_data)
    @id = parks_data[:id]
    @park_name = parks_data[:fullName]
    @description = parks_data[:description]
    @directions = parks_data[:directionsInfo]
    @total_hours = parks_data[:operatingHours][0]
  end

  def hours 
    standard_hours = @total_hours[:standardHours]
    standard_hours.map do |day|
      "#{day[0].capitalize}"": " "#{day[1]}"
    end
  end
end