# Time complexity: O(n)
# Space complexity: O(n)

def palindrome_permutation?(string)
  hash = {}
  string.chars do |char|
    hash.key?(char) ? hash[char] += 1 : hash[char] = 1
  end

  counter = 0
  hash.each do |char, occur|
    counter += 1 unless occur % 2 == 0
    return false if counter > 1
  end

  return true
end