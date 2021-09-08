class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :card

  def total_price
    puts "Quantity: #{quantity} price: #{product.price}"
    product.price * quantity
  end
end
