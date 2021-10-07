class CardsController < ApplicationController
  before_action :set_card, only: %i[ show edit update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  # GET /Carts or /Carts.json
  def index
    @cards = Card.all
  end

  # GET /Carts/1 or /Carts/1.json
  def show
    @count = @card.total_items
    p '>>>>>>>>>>>>>>>>>>>>>>>.'
    p 'SHowing card'
    p '>>>>>>>>>>>>>>>>>>>>>>>.'
  end

  # GET /Carts/new
  def new
    @card = Card.new
  end

  # GET /Carts/1/edit
  def edit
  end

  # POST /Carts or /Carts.json
  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: "Card was successfully created." }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Carts/1 or /Carts/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: "Card was successfully updated." }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Carts/1 or /Carts/1.json
  def destroy
    if @card.id == session[:cart_id]
      p ">>>>>>>>>>>>>>>>>>>>>>>if"
    else
      p "<<<<<<<<<<<<<<<<<<<<<<<<<<else"
    end
    @card.destroy if @card.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_index_url, notice: "Card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
      p "===========#@card"
    end

    # Only allow a list of trusted parameters through.
    def card_params
      params.fetch(:card, {})
    end

  private
  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to store_index_url, notice: 'Invalid Cart'
  end
end
