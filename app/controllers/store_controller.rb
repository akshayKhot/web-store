require "greeter"
require "pdf/receipt"

class StoreController < ApplicationController
  include CurrentCart
  before_action :set_counter, :set_cart, only: %i[ index ]

  def index
    session[:counter] += 1
    @counter = session[:counter]
    @products = Product.order(:price)
    @greeting = Greeter.new.greet
    @receipt = Pdf::Receipt.create
  end

  def set_counter
    session[:counter] ||= 0
  end
end
