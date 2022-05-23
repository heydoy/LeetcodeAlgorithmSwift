class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var stack = [Int]()
        var secondLast = 0
    
        for v in ops{
            switch v {
                case "+" :
                if stack.count >= 2 {
                    let last = stack.removeLast()
                    let secondLast = stack.last!
                    stack.append(last)
                    stack.append(last+secondLast)
                }
                case "D" :
                    if !stack.isEmpty {
                        let value = stack.last! * 2
                        stack.append(value)
                    }

                case "C" :
                    if !stack.isEmpty {
                        stack.removeLast()
                        
                    }
                default :
                     if let value = Int(v) {
                        stack.append(value)
                    }
            }
        }
    
        var total: Int = 0
        for value in stack {
            print(value)
            total += value
        }
        return total
    }

    
}