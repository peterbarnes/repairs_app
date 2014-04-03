class RepairsController < ApplicationController
	def show
		@repair = Repair.find(params[:id])
	end

	def index
		@repairs = Repair.paginate(page: params[:page])
	end

	def find
		@repairs = Repair.search(params[:search])
	end

	def new
		@repair = Repair.new(:user => current_user)
	end

	def edit
		@repair = Repair.find(params[:id])
	end

	def update
		@repair = Repair.find(params[:id])
    if @repair.update_attributes(repair_params)
      flash[:success] = "Repair updated"
      redirect_to @repair
    else
      render 'edit'
    end
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
			params.require(:repair).permit(:user_id, :customer, :item, :symptoms, :item_serial, :notes, :contact)
		end
end
