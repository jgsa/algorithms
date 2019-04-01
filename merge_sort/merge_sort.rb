def merge_sort(array)
    return array if array.length < 2
    left, right = array.each_slice((array.length / 2.0).ceil).to_a
    left = merge_sort(left)
    right = merge_sort(right)
    merge(left, right)
end

def merge(left, right)
    new_array = []
    new_array << (left.first <= right.first ?  left.delete(left.first) : right.delete(right.first)) until left.empty? or right.empty?
    new_array << left.delete(left.first) until left.empty?
    new_array << right.delete(right.first) until right.empty?
    new_array
end

array = gets.split(' ')
print merge_sort(array)
