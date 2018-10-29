# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  unless array1 && array2
    return []
  end

  intersection = []
  array1.each do |num1|
    array2.each do |num2|
      if num1 == num2
        intersection << num1
        break
      end
    end
  end
  return intersection
end


# the time complexity for this solution is O(n * m) because in a worst case scenario is will iterate through each element in m for each element in n
# the space complexity is O(n) where n is smaller than m because the new array created to contain the intersecting elements cannot excede the number of elements in the smaller array
