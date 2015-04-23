# input two strings
# output boolean

# ex: permutations?(cat, dog) ==> false
# ex: permutations?(race, care) ==> true
# ex: permutations?(race) ==> raise error
# ex: permutations?("", "") ==> false
# ex: permutations?(care, cares) ==> false

# Assumptions: capitalization matters, ex: dog is not a permutation of God

def permutations?(str1, str2)
  return false if str1.length != str2.length
  str1.chars.sort == str2.chars.sort
end

p permutations?('race', 'care')
# p permutations?('race')
p permutations?('care', 'carer')
p permutations?('eats', 'sets')
p permutations?('sets', 'eats')
p permutations?('test', 'sets')
p permutations?('eest', 'eest')
p permutations?('eest', 'tees')
