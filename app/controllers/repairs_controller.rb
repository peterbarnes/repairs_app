class RepairsController < ApplicationController
	def index
		if params[:search]
			@repairs = Repair.search(params[:search]).order("created_at DESC").paginate(page: params[:page])
		else
			@repairs = Repair.order("created_at DESC").paginate(page: params[:page])
		end
	end

	def show
		@repair = Repair.find(params[:id])
	end

	def new
		@repair = Repair.new(:user => current_user)
	end

	def edit
		@repair = Repair.find(params[:id])
	end

	def checkout
		@repair = Repair.find(params[:id])
		@line = Line.new(:taxable => true)
		@repair.lines << @line
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

	def update_checkout
		@repair = Repair.find(params[:id])
    if @repair.update_attributes(repair_params)
      redirect_to checkout_repair_path(@repair)
    else
      render 'checkout'
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
			params.require(:repair).permit!
		end
end
