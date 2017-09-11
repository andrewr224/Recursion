# Merge Sort

# generating unsorted list e.g.
unsorted_list = 1_000.times.map {rand(0..1_000_000)}

# does not modify original array
def merge_sort(list)
  sorted = []
  if list.size < 2
    return list
  else
    # divide
    left, right = list.each_slice( (list.size/2.0).round ).to_a
    left = merge_sort(left)
    right = merge_sort(right)

    # conquer
    until left.empty? || right.empty?
      if left.first < right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end

    sorted += left unless left.empty?
    sorted += right unless right.empty?
  end
  sorted
end

sorted_list = merge_sort unsorted_list

p "Sorted list - #{sorted_list}"
