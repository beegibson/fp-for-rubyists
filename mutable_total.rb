def mutable_total_cart(items)
  total = 0
  items.each do |item|
    total += item.cost
  end
end

def recursive_total_cart(items)
  head, *tail = items
  if tail.empty?
    head.cost
  else
    head.cost + recursive_total_cart(tail)
  end
end

def immutable_total_cart(items)
  items.inject(0) { |total, item| total += item.cost}
end

class Item
  def initialize(cost)
    @cost = cost
  end
end
