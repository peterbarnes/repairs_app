class RepairsController < ApplicationController
	def show
		@repair = Repair.find(params[:id])
	end

	def new
		@repair = Repair.new(:user => current_user)
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
			params.require(:repair).permit(:user_id, :customer, :item, :symptoms, :item_serial, :notes)
		end
end
