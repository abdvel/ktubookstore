class MizahController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.where("category = 'Mizah'")
  end
end
