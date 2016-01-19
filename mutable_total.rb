def mutable_total_cart(items)
  total = 0
  items.each do |item|
    total += item.cost
  end
end

def mutable_total_cart(items)
  items.inject(0) { |total, item| total = total + item.cost}
end

class Item
  def initialize(cost)
    @cost = cost
  end
end
