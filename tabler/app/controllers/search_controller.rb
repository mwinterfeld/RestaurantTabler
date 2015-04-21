class SearchController < ApplicationController
	def search
		puts params.inspect
		@search_results = PgSearch.multisearch(params[:query]) unless params[:query].empty?
	end

	def index
	end
end
