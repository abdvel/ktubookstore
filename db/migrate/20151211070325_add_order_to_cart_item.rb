class AddOrderToCartItem < ActiveRecord::Migration
  def change
    add_reference :cart_items, :order, index: true, foreign_key: true
  end
end
