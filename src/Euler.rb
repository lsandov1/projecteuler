

module Euler
  
  # p8. largets prodcut of a big digit
  def Euler.extractDigits(n)
    n.to_s.split(//).collect {|i| i.to_i }
  end
  def Euler.p8(slice, n)
    p8Helper(slice, extractDigits(n),-1)
  end
  
  def Euler.p8Helper(slice, n,max)
    if n.size <slice
      max
    else
      product = n[0..slice-1].reduce(:*)
      puts "#{product} #{max}"
      p8Helper(slice, n[1..-1], product > max ? product: max)
    end
  end
  
end
      