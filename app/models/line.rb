class Line < ActiveRecord::Base
	belongs_to :repair
	validates :title, presence: true
	validates :quantity, presence: true
	validates :amount, presence: true
  attr_default :quantity, 0
  attr_default :amount, 0

  def subtotal
    quantity * amount
  end

  def taxes(taxrate)
    if taxable?
      subtotal * taxrate
    else
      subtotal
    end
  end

end
