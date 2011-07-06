#Two numbers are say to be 'friends' (amigos in spanish) if the sum of the divisors of the first 
#is equal to the second, and viceversa.  For example, the divisors of 220 are: 1, 2, 4, 5, 10, 
#11, 20, 22, 44, 55, 110 which sums up 284.  284 divisors are 1, 2, 4, 71 and 142, which sums 220,
#thus 220 and 284 are friends. write a function which returns either true of false if a number is a friend
#of other number. Example

# friend(220) #==> true
# friend(7) #==> false
# friend(284) #==> true





#>> (2..n-1).select{ |e| n.modulo(e) == 0 }.reduce(:+)
#=> 503
#>> friend = (2..n-1).select{ |e| n.modulo(e) == 0 }.reduce(:+)
#=> 503
#>> (2..friend-1).select{ |e| n.modulo(e) == 0 }.reduce(:+)
#=> 743


def f(a)
  l = lambda{|n|(1..n-1).select{|e|n.modulo(e)==0}.reduce(:+)}
	(l.call(l.call(a)) == a)
end

#puts friends(220)
puts (2..10000).select{|re| f(re)}
