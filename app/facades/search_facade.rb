class SearchFacade
  class << self
    def get_characters_by_nation(nation)
      json = SearchService.all_members(nation)
      # require "pry"; binding.pry
      Nation.new(json)
    end

    def first_members(nation)
      json_2 = SearchService.all_members(nation)[0..24].map do |member|
        Member.new(member)
        # require "pry"; binding.pry
      end
    end
  end
end
