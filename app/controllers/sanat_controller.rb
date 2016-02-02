class SanatController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.where("category = 'Sanat'")
  end
end
