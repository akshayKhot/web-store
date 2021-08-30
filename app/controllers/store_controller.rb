class StoreController < ApplicationController
  before_action :set_counter, only: %i[ index ]

  def index
    session[:counter] += 1
    @counter = session[:counter]
    @products = Product.order(:price)
  end

  def set_counter
    session[:counter] ||= 0
  end
end
