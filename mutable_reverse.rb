def transparent_example
  a = "Hello, world!"
  puts a.reverse
  puts "a is: #{a}"
  puts a.reverse
end

def mutable_example
  a = "Hello, world!"
  puts a.reverse!
  puts "a is: #{a}"
  puts a.reverse!
end
