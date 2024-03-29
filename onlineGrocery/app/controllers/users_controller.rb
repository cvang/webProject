class UsersController < ApplicationController
    def show
        @users = User.all
        @user = current_user
        @address = @user.addresses.new
        @credit_card = @user.credit_cards.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)
        @user.addresses.each do |address|
            address.user_id = current_user.id
        end
        @user.credit_cards.each do |credit_card|
            credit_card.user_id = current_user.id
        end

        if @user.save
            redirect_to @user, notice: 'Succesffuly created.'
        else
            render :new
        end
    end

    private
        def set_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:user_id, :name, :last_name, :phone, :email, addresses_attributes: [:line_1_building, :line_2_street, :city, :state, :country], credit_cards_attributes: [:card_number, :expire, :cvs])
        end


end
