class SearchController < ApplicationController
  def index
    @all_members = SearchFacade.get_characters_by_nation(params[:nation].gsub("_", "+"))
  end
end
