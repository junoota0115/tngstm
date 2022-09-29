class Product < ApplicationRecord
  #validates :text, presence: true

  def self.search(search)
    if search != ""
      Product.where('product_name LIKE ?', "%#{search}%")
    else
      Product.all
    end
  end
end
