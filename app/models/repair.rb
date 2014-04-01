class Repair < ActiveRecord::Base
	validates :customer, presence: true
	validates :item, presence: true
	validates :symptoms, presence: true
end
