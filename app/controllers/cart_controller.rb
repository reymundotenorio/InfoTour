class CartController < ApplicationController

  before_action :authenticate_user!, except:[:index]

  def index
    #Si existe el carrito, pasarlo a la pagina para mostrar sino pasar un valor vacio
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end

  end #fin del metodo iniciar

  def add
    id = params[:id]
    quantity = params[:quantity]
    quantity = quantity.to_i
    #Si el carrito ha sido creado, usar el carrito usado, sino crear uno nuevo
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    #Si el producto ha sido ya agregado al carrito, incrementar el valor, sino agregar el producto al carrito
    if cart[id] then
      cart[id] = cart[id]+quantity
    else
      cart[id] = quantity
      #Rails.logger.warn "Param quantity: #{quantity}"
    end

    redirect_to :action => :index

  end #fin del metodo agregar

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def remove
    id = params[:id]
    #Si el carrito ha sido creado, usar el carrito usado, sino crear uno nuevo
    if session[:cart] then
      cart = session[:cart]

      if cart[id] then
        cart.delete(id)
        redirect_to(:back)
      end

    end

  end #fin del metodo agregar


end
