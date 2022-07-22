class SearchFacade
  class << self
    def get_characters_by_nation(nation)
      SearchService.all_members(nation)
    end
  end
end
