class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def authenticate!
    authenticate_customer!
    
    if params[:controller] == 'products' && (params[:action] == 'edit' || params[:action] == 'update' || params[:action] == 'destroy')
        current_product = Product.find(params[:id])

        if current_product.customer_id == current_customer.id
            return
        else
            redirect_to root_url, notice: "Record not found"
        end
    end
  end
  protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) << :name
        devise_parameter_sanitizer.for(:account_update) << :name
      end
end
