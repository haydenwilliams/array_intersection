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
# the space complexity is O(n) where n is smaller than m because the new array created to contain the intersecting elements cannot excede the number of elements in the smaller array. An alternative solution with higher space complexity would involve creating a hash and copying each element from one of the arrays over to the hash, where each element represents one key in the hash with the corresponding value being nil. You could then iterate through each element in the second array, attempting to look it up in the hash. If there is an intersection, you will receive a truthy reponse; if no intersection, the lookup will return false.
