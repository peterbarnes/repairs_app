class RepairsController < ApplicationController
	def show
		@repair = Repair.find(params[:id])
	end

	def new
		@repair = Repair.new
	end

	def create
		@repair = Repair.new(repair_params)
		if @repair.save
			redirect_to @repair
		else
			render 'new'
		end
	end

	private

		def repair_params
			params.require(:repair).permit(:customer, :item, :symptoms)
		end
end
