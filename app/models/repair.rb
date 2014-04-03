class Repair < ActiveRecord::Base
	validates :customer, presence: true
	validates :item, presence: true
	default_scope -> { order('created_at DESC') }
	validates :symptoms, presence: true
	validates :contact, presence: true
	belongs_to :user

	def self.search(query)
		where("customer like ?", "%#{query}%")
	end
end
