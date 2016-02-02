class CocukController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.where("category = 'Çocuk'")
  end
end
