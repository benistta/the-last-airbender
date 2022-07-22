class SearchFacade
  class << self
    def get_characters_by_nation(nation)
      json = SearchService.all_members(nation)
      # require "pry"; binding.pry
      Nation.new(json)
    end
  end
end
