class SearchFacade
  class << self
    def find_members(nation)
      SearchService.all_members(nation)
    end
  end
end
