class Product < ActiveRecord::Base

  validates :title, :description, :price, :category, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'sadece jpg,gif gibi resim dosyası olması gerekiyor'
  }

  has_many :cart_items
  #before_destroy :ensure_not_referenced_by_any_cart_item

  private

  def ensure_not_referenced_by_any_cart_item
    if cart_items.empty?
      return true
    else
      errors.add(:base, 'Sepetinizde bu öğe zaten var.')
      return false
    end
  end
end
