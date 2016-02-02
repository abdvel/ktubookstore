class CizgiromanController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.where("category = 'Çizgi Roman'")
  end
end
