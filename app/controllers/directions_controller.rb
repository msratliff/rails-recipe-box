class DirectionsController < ApplicationController

	before_action :set_recipe 

	def create
		
		@direction = @recipe.directions.create(direction_params)

		redirect_to @recipe
	end

	def destroy
		@direction = @recipe.directions.find(params[:id])

		if @direction.destroy
			flash[:success] = "Ingredient Deleted"
		else
			flash[:error] = "Ingredient couldn't be deleted."
		end

		redirect_to @recipe
	end

	private

		def set_recipe
			@recipe = Recipe.find(params[:recipe_id])
		end

		def direction_params
			params[:direction].permit(:step)
		end

end
