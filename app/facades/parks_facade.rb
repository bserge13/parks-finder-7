class ParksFacade 
  def self.parks_by_state(state)
    ParksService.states_parks_search(state)[:data].map do |parks_data| 

      Park.new(parks_data)
    end 
  end
end