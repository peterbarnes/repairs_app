class Line < ActiveRecord::Base
	before_save { self.amount = amount * 100 }
	belongs_to :repair
	validates :title, presence: true
	validates :quantity, presence: true
	validates :amount, presence: true
end
