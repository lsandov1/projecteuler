readme =: 0 : 0
Name: Largest Prime Factor
Link: http://projecteuler.net/problem=3

Usage:
  
  largest_prime_factor <any number>

Solution:
  
  p3

Explanation:

Make use of dyad built-in function 3 p: y to get the prime factors, then
get the max value Max-of & Insert functions (>. /)
)

NB. ============
NB. Main Program
NB. ============

largest_prime_factor =: 3 : '>. / 3 p: y'
p3 =: largest_prime_factor 600851475143
