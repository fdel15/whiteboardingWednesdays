# Binary search - Binary search is an efficient algorithm for finding an item from an ORDERED list of items by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.

# Input: array, integer
# Output: integer

# Examples: bin_search([2, 3, 5], 5) ==> 2
#           bin_search([2, 3, 5], 7) ==> -1
#           bin_search([2, 3, 5], 4) ==> -1
#           bin_search([2, 3, 5], 2) ==> 0
#           bin_search([], 7 ) ==> raise_error

# Assumptions: We are given an array of all primes less than 100 to use for our example. Array is sorted from smallest to greatest.

# primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

# Time: Time for a binary search should be lg n
### lg n --> the number of times we repeatedly halve, starting at n, until we get the value 1

# Code!

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
       41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

def bin_search(array, target_value, min = 0, max = array.length - 1, searches = 0 )
  return "Not found: -1, total number of searches: #{searches}" if max < min
  searches += 1
  guess = (max + min) / 2
  return "Index is  #{guess}, total number of searches: #{searches}" if array[guess] == target_value
  array[guess] < target_value ? min = guess + 1 : max = guess - 1
  bin_search(array, target_value, min, max, searches)
end

p bin_search(primes, 89)
p bin_search(primes, 2)
p bin_search(primes, 41)
p bin_search(primes, 67)
p bin_search(primes, 120)
p bin_search(primes, 113)
p bin_search(primes, 0)
p bin_search(primes, 62)

### Javascript solution

# var doSearch = function(array, targetValue) {
#    var min = 0;
#    var max = array.length - 1;
#    var guess;
#
#    while(max >= min ){
#        guess = Math.floor((max + min) / 2);
#        if(array[guess] === targetValue) {
#            return guess;
#        }
#        else if(array[guess] < targetValue) {
#            min = guess + 1;
#        }
#        else {
#            max = guess - 1;
#        }
#        }
#        return -1;
#        };
#
#        var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
#        41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
#
#        var result = doSearch(primes, 73);
#        println("Found prime at index " + result);
#
#            Program.assertEqual(doSearch(primes, 73), 20);


# Resources
# https://www.khanacademy.org/computing/computer-science/algorithms/binary-search/a/binary-search





