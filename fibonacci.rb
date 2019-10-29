def iterative_fib(num)
  i = 0
  a = 0
  b = 1

  if num == 1 || num == 0
    return num
  else
    while i < num
      a = b
      b = a + b
      i += 1
    end
    return b
  end

end

def recursive_fib(num)
  if num == 1 || num == 0
    return num
  end
  return recursive_fib(num-1) + recursive_fib(num-2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end