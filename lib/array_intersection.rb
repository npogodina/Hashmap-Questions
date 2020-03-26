# Time complexity: O(n)
# Space complexity O(n)

def intersection(list1, list2)
  hash = {}

  list1.each do |num|
    hash[num] = 1
  end

  result = list2.select { |num| hash.key?(num)}
end