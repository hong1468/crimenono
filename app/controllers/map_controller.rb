class MapController < ApplicationController
	
	def map
		if params[:query1].nil?
			@recom = Recom.all
			@recom_2 = Recom.where(id: (1..6))
			@recom_1 = Recom.where(id: (7..15))
			@recom_last = Recom.last
		else
			@recom = Recom.all
			@recom_2 = Recom.where(id: (1..6))
			@recom_1 = Recom.where(id: (7..15))
			@recom_last = Recom.last
			@query1 = params[:query1]
		end
	end
	
end
