def collatz(num)
  chain_length = 1
  while num != 1
    if num % 2 == 0
      num = num / 2
    else
      num = (3 * num) + 1
    end
    chain_length += 1
  end
  return chain_length
end

def find_longest_chain
  longest = 0
  number = 0
  (1..1000000).each do |x|
      if collatz(x) > longest
        longest = collatz(x)
        number = x
      end
  end
  puts "#{number} has the longest chain: #{longest}"
end

find_longest_chain