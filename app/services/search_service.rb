class SearchService
  class << self
    def all_members(nation)
      end_point = "/api/v1/characters?affiliation=#{nation}"
      response = connection.get(end_point) do |faraday|
        faraday.params["perPage"] = "100"
      end
      json = JSON.parse(response.body, symbolize_names: true)
      # require "pry"; binding.pry
    end

    def connection
      url = "https://last-airbender-api.herokuapp.com"
      Faraday.new(url: url)
    end
  end
end
