class MTGApi
  
  def initialize
    @url = "http://api.mtgapi.com/v2"
  end

  def get_set_info(set_code)
    response = Faraday.get "#{@url}/sets?code=#{set_code}"
    parsed_response = JSON.parse(response.body)
    parsed_response['sets']
  end

  def get_cards(name)
    response = Faraday.get "#{@url}/cards?name=#{name}"
    parsed_response = JSON.parse(response.body)
    parsed_response['cards']
  end

end
