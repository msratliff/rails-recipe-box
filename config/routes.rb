Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :recipes do
		resources :ingredients
		resources :directions
	end

	root "recipes#index"
end
