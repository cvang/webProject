class CreditCardsController < ApplicationController
  before_action :set_credit_card, only: [:show, :edit, :update, :destroy]

  # GET /credit_cards
  # GET /credit_cards.json
 # def index
 #   @credit_cards = CreditCard.all
 # end

  # GET /credit_cards/1
  # GET /credit_cards/1.json
 # def show
 # end

  # GET /credit_cards/new
  def new
    #@credit_card = CreditCard.new
     @user = User.find params[:user_id]
     @credit_card = @user.credit_cards.new
  end

  # GET /credit_cards/1/edit
  def edit
  end

  # POST /credit_cards
  # POST /credit_cards.json
  def create
    @user = User.find params[:user_id]
    @credit_card = CreditCard.new(credit_card_params)

    respond_to do |format|
      if @credit_card.save
        format.html { redirect_to user_url(@user), notice: 'Credit card was successfully created.' }
        format.json { render :show, status: :created, location: @credit_card }
      else
        format.html { render :new }
        format.json { render json: @credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_cards/1
  # PATCH/PUT /credit_cards/1.json
  def update
    respond_to do |format|
      if @credit_card.update(credit_card_params)
        format.html { redirect_to user_url(@credit_card.user), notice: 'Credit card was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_card }
      else
        format.html { render :edit }
        format.json { render json: @credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_cards/1
  # DELETE /credit_cards/1.json
  def destroy
    @credit_card.destroy
    respond_to do |format|
      format.html { redirect_to user_url(@credit_card.user), notice: 'Credit card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card
      @credit_card = CreditCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_card_params
      params.require(:credit_card).permit(:card_numbers, :expire, :cvs, :user_id)
    end
end
