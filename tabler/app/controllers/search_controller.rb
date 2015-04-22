class SearchController < ApplicationController
	before_filter :authenticate_user!

	def search
		@search_results = PgSearch.multisearch(params[:query]) unless params[:query].nil?
	end
end
