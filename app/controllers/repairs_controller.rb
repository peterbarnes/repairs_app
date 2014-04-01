class RepairsController < ApplicationController
	def show
		@repair = Repair.find(params[:id])
	end

	def new
		
	end
end
