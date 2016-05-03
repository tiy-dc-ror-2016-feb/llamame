class SearchController < ApplicationController
  def index
    @results = Person.search(params[:q]) + Company.search(params[:q]) 
  end
end
