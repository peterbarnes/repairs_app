class Repair < ActiveRecord::Base
	validates :customer, presence: true
	validates :item, presence: true
	validates :symptoms, presence: true
	validates :contact, presence: true
	belongs_to :user
end
