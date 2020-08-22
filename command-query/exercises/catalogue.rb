class Catalogue
  attr_reader :products

  def initialize
    @products = []
  end

  def <<(product)
    @products << product
  end

  def cheapest
    result = @products.min_by {|product| product.price}
    result.name 
  end

end
