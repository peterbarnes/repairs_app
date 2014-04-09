module CurrencyHelper
  def convert(pennies, options={})
    number_to_currency(pennies.to_f / 100, options)
  end
end