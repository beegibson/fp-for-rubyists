require 'logger'

def side_effect_fib(n, logger: Logger.new(STDOUT))
  result = 0
  if n == 0 || n == 1
    result = 1
  else
    prev = 1
    curr = 1
    (2..n).each do
      oldcurr = curr
      curr = prev + curr
      prev = oldcurr
    end
    result = curr
  end
  logger.info(result)
end

def recursive_fib(n)
  n == 0 || n == 1 ? 1 : recursive_fib(n - 1) + recursive_fib(n - 2)
end

def print_fib(n, logger: Logger.new(STDOUT))
  logger.info(recursive_fib(n))
end

def evil_fib(n)
  print_fib(n)
  format_disk
end

def format_disk
  puts "format disk"
end

def is_base_case_1(n)
  if side_effect_fib(n) == side_effect_fib(0)
    "base case"
  else
    "Not base case"
  end
end

def is_base_case_2(n)
  if recursive_fib(n) == recursive_fib(0)
    "base case"
  else
    "Not base case"
  end
end
