module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    array = Array.new
    div = number

    while div > 9
      array.push(div%10)
      div = div/10
    end

    array.push(div)

    n = array.size

    i = 1
    while i < n
      array[i] = array[i] * 2
      if array[i] >= 10
        array[i] -= 9
      end
      i += 2
    end

    sum = 0
    b = 0
    while b < n
      sum += array[b] 
      b += 1
    end

    if n % 2 == 0
      if sum % 10 == 0
        return true
      else
        return false
      end
    else 
      if sum % 10 == 0
        return true
      else
        return false
      end      
    end
  end
end
