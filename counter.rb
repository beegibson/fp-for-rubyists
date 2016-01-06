class Counter
  def initialize
    @count = 0
  end

  def increment
    @count = @count + 1
  end
end

class FCounter
  def initialize(n)
    @count = n
  end

  def increment
    FCounter.new(@count + 1)
  end

  def to_s
    @count
  end
end

def increment
  puts "Counter"
  counter = Counter.new
  puts counter.increment()
  puts counter.increment()
  puts 'FCounter'
  counter = FCounter.new(0)
  puts counter.increment().to_s
  puts counter.increment().to_s
end
