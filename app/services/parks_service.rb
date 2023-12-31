class ParksService 
  def self.conn 
    Faraday.new('https://developer.nps.gov/api/v1/parks') do |faraday|
      faraday.headers['X-API-Key'] = Rails.application.credentials.nps[:api_key]
    end
  end

  def self.states_parks_search(state)
    get_url("?stateCode=#{state}")
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end