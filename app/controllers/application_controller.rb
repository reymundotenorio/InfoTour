class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :carrito


def carrito
  if session[:cart] then
    @cart = session[:cart]
  else
    @cart = {}
  end
end

end
