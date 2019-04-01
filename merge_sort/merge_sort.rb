def merge_sort(array)
    return array if array.length < 2
    left, right = array.each_slice((array.length / 2.0).ceil).to_a
    left = merge_sort(left)
    right = merge_sort(right)
    merge(left, right)
end

def merge(left, right)
    new_array = []
    new_array << (left.first <= right.first ?  left.shift : right.shift) until left.empty? or right.empty?
    new_array << left.shift until left.empty?
    new_array << right.shift until right.empty?
    new_array
end

array = gets.split.map(&:to_i)
puts array.first.class
print merge_sort(array)
