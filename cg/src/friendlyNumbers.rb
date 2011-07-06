module Friendly
  
  class Bignum
    # returns the divisors of a number
    def divisors(n)
    end
  end

  class Array
    # return the sum of an array
    def sumy(a)
    end
  end
	
  def Friendly.friendly(n)
    friend = n.divisors.sum
    (n == friend.divisors.sum)? [n,friend] : []
  end

end

