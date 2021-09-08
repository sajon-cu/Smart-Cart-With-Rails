module CurrentCart
  private
  def set_cart
    @card = Card.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @card = Card.create
    session[:cart_id] = @card.id
  end
end