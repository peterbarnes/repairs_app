class Repair < ActiveRecord::Base
	has_many :lines
	validates :customer, presence: true
	validates :item, presence: true
	default_scope -> { order('created_at DESC') }
	validates :symptoms, presence: true
	validates :contact, presence: true
	belongs_to :user
	attr_default :taxrate, 0.07

	accepts_nested_attributes_for :lines, allow_destroy: true 

	def self.search(query)
		where("customer like ?", "%#{query}%")
	end

	def tax
		@taxtotal = 0
		lines.each do |line| 
			@taxtotal += line.taxes(taxrate)
		end
		return @taxtotal
	end

	def subtotal
		@total = 0
		lines.each do |line|
			@total += line.subtotal
		end
		return @total
	end

	def total
		subtotal + tax
	end
end
