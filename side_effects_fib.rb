def side_effect_fib(n)
  if n == 0 || n == 1
    1
  else
    prev = 1
    curr = 1
    [2, 3, 4, 5].each do
      oldcurr = curr
      curr = prev + curr
      prev = oldcurr
    end
    puts curr
  end
end

def recursive_fib(n)
  n == 0 || n == 1 ? 1 : recursive_fib(n - 1) + recursive_fib(n - 2)
end

def print_fib(n)
  puts recursive_fib(n)
end

#def evilFib(n)
#  n == 0 || n == 1 ? 1; formatDisk : recursiveFib(n - 1) + recursiveFib(n - 2)
#end

def formatDisk
  puts "format disk"
end
