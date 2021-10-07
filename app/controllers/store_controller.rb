class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:index]

  def index
    @count = @card.total_items
    @products = Product.order(:name)
  end
end
