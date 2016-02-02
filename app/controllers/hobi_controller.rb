class HobiController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.where("category = 'Hobi'")
  end
end
