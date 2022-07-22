class SearchController < ApplicationController
  def index
    @all_members = SearchFacade.get_characters_by_nation(params[:nation].gsub("_", "+"))

    # require "pry"; binding.pry
    @first_members = SearchFacade.first_members(params[:nation].gsub("_", "+"))
    # require "pry"; binding.pry
  end
end
