class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
      @carts = Cart.all
  end

  # GET /carts/new
  def new
    @product = Product.find(params[:product_id])
    @cart = @product.carts.new
  end

  # GET /carts/1/edit
  def edit
  end

  def check_product
    @carts = Cart.all
    @something = 1

    @okay = false
    @carts.each do |cart|
      if @product.id == cart.product.id
          @something = @something + 1
#          @cart.quantity = @something
          cart.update_attribute(:quantity, @something)
          @okay = true 
          break;
      end
    end
    return  @okay
  end
  # POST /carts
  # POST /carts.json
  def create
    @product = Product.find params[:product_id]
    @cart = Cart.new(cart_params)
    @cart.user_id = current_user.id
    @some = check_product

    respond_to do |format|
        if @cart.save
        format.html { redirect_to products_url, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        #format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.html { redirect_to products_url(@cart.product), notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      #format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.html { redirect_to product_carts_url(@cart.product), notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:product_id, :user_id, :quantity)
    end
end