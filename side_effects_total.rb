require 'logger'

def mutable_total_cart(items, logger: Logger.new)
  total = 0
  items.each do |item|
    total += item.cost
  end
  logger.info(total)
end

def total_cart(items)
  items.inject(0) { |total, item| total + item.cost}
end

def print_total_cart(items, logger: Logger.new)
  logger.info(total_cart(items))
end

class Item
  attr_reader :cost
  def initialize(cost)
    @cost = cost
  end
end
