class Product < ApplicationRecord

has_many :orders
belongs_to :supplier #return a supplier hash. assumes product has a foreign key(supplier_id)
has_many :images

  def images
    Image.where(product_id: id)
  end
  
  def is_discounted? #returns either true or false
    price < 10 
  end

  def tax
    price * 0.09 
  end

  def total
    price + tax
  end 
  

end
