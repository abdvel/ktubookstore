class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.limit(5).order("RANDOM()")
  end
end
