/*
Rotate Matrix

Rotate the elements in a matrix in place clockwise.
*/

var matrix = [["A","B","C","D"],
              ["E","F","G","H"],
              ["I","J","K","L"],
              ["M","N","O","P"]]

func rotMatrix(m: inout [[String]]) -> [[String]] {
    let size = m.count
    let sizeHalved = m.count/2
    
    
    for row in 0..<sizeHalved {
        for column in row..<(size - 1 - row) {
            //Top left
            let temp = m[row][column]
            
            //Top left to equal Bottom left
            m[row][column] = m[size - 1 - column][row]
            
            //Bottom left to equal Bottom Right
            m[size - 1 - column][row] = m[size - 1 - row][size - 1 - column]
            
            //Bottom right to equal Top right
            m[size - 1 - row][size - 1 - column] = m[column][size - 1 - row]
            
            //Top right to equal top left
            m[column][size - 1 - row] = temp
        }
    }
    
    return m
}

rotMatrix(m: &matrix)
