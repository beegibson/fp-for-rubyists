def mutableFib(n)
  if n == 0 || n == 1
    n
  else
    prev = 0
    curr = 1
    (2..n).each do
      oldcurr = curr
      curr = prev + curr
      prev = oldcurr
    end
    curr
  end
end

def recursiveFib(n)
  n == 0 || n == 1 ? n : recursiveFib(n - 1) + recursiveFib(n - 2)
end
