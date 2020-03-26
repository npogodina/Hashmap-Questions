
# Time complexity: O(n)
# Space complexity: O(n)

def permutations?(string1, string2)
  return false if string1.length != string2.length
  return true if string1 == ""

  hash = {}
  string1.chars do |char|
    hash.key?(char) ? hash[char] += 1 : hash[char] = 1
  end

  string2.chars do |char|
    return false unless hash.key?(char)
    if hash[char] > 0
      hash[char] -= 1
    else
      return false
    end
  end

  return true
end