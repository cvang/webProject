class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @users = User.all
    item1 = params[:item1]
    item2 = params[:item2]
    item3 = params[:item3]
    @p3 = item3.to_i
    @p2 = item2.to_i
    @p = item1.to_i
  end

  def list
        @get_product_list = Array.new
        @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
      @cart = @product.carts.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.carts.each do |cart|
        car.user_id = current_user.id
    end
    @uploaded_io = params[:product][:uploaded_file]
    if @uploaded_io != nil
        File.open(Rails.root.join('public', 'images', @product.filename), 'wb') do |file|
            file.write(@uploaded_io.read)
        end
    end
    respond_to do |format|
      if @product.save
        format.html { redirect_to root_url(:item3 => 3), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to root_url(:item3 => 3), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to root_url(:item => 3), notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :product_type, :price, :detail, :filename, :private)
    end
end
