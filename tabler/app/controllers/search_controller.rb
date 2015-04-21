class SearchController < ApplicationController
	def search
		@search_results = PgSearch.multisearch(params[:query]) unless params[:query].empty?
	end

	def index
	end
end
