class SearchController < ApplicationController
  def index
    @total_members = SearchFacade.find_members(params[:nation])
  end
end
