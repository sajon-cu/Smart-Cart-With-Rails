class Card < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)

    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end

    current_item

  end

  def total_price
    line_items.to_a.sum do |item|
      item.total_price
    end
  end

  def total_items
    count = 0
    line_items.each do |item|
      count += item.quantity
    end
    count
  end
end
