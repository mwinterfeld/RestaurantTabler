class SearchController < ApplicationController
	def search
		@search_results = PgSearch.multisearch(params[:query]) unless params[:query].nil?
	end

	def index
	end
end
