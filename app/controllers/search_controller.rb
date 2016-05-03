class SearchController < ApplicationController
  def index
    @results = Person.search(params[:q])
    @results += Company.search(params[:q])
  end
end
