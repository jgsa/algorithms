def count_islands(matrix)
    n = matrix.length
    count = 0
    visits = Array.new(n){ Array.new(n, false) }
    for i in 0...n do
        for j in 0...n do
            if (matrix[i][j] == 'l' and !visits[i][j])
                search(matrix, i, j, visits, n)
                count += 1
            end
        end
    end
    count
end

def search(matrix, r, c, visits, n)
 
    visits[r][c] = true
    neighbors_cols = [-1, -1, -1,  0, 0,  1, 1, 1] 
    neighbors_rows = [-1,  0,  1, -1, 1, -1, 0, 1]
    for x in 0...8 do
        row = r + neighbors_rows[x]
        col = c + neighbors_cols[x]
        search(matrix, row, col, visits, n) if ((row >= 0) and (row < n) and (col >= 0) and (col < n) and (matrix[row][col] == 'l' and !visits[row][col]))
    end
end

#matrix = [
#    ['s','s','s','l'],
#    ['l','l','s','l'],
#    ['s','l','s','s'],
#    ['s','s','s','l']
#]

loop do
    size = gets.to_i
    break if size == 0
    matrix = []
    size.times do
        matrix << gets.chomp.split('')
    end
    
    future_islands = count_islands(matrix)
    puts "Number of islands:  #{future_islands}"
end