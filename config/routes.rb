Rails.application.routes.draw do

	root to: 'map#map'
	
	# get '/best_credit' => 'home#result'
	# post '/create' => 'home#create'
	
	# get '/final_page' => 'home#final_page'
	# get '/bank_info/:id' => 'home#bank_info'
	
	get '/map' => 'map#map'
	get '/map2' => 'map#map2'
	
end
