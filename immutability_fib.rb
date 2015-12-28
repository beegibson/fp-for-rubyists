def mutableFib(n)
  if n == 0 || n == 1
    1
  else
    prev = 1
    curr = 1
    [2, 3, 4, 5].each do
      puts curr
      oldcurr = curr
      curr = prev + curr
      prev = oldcurr
    end
    curr
  end
end

def recursiveFib(n)
  n == 0 || n == 1 ? 1 : recursiveFib(n - 1) + recursiveFib(n - 2)
end

def reduceFib(n)
  def base_case(n)
    n == 0 || n == 1
  end
end
