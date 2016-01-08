require 'logger'

def side_effect_fib(n, logger: Logger.new(STDOUT))
  result = 0
  if n == 0 || n == 1
    result = n
  else
    prev = 0
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
  n == 0 || n == 1 ? n : recursive_fib(n - 1) + recursive_fib(n - 2)
end

def print_fib(n, logger: Logger.new(STDOUT))
  logger.info(recursive_fib(n))
end
