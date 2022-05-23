
class MinStack {
    var stack: [Int]
    var minStack: [Int]
    
    init() {
        stack = [Int]()
        minStack = [Int]()
        
    }
    
    func push(_ val: Int) {
        stack.append(val)
        
        if minStack.isEmpty || val <= minStack.last! {
            minStack.append(val)
        }
        
    }
    
    func pop() {
         guard !stack.isEmpty else {
            return
        }
        let removed = stack.removeLast()
        let last = minStack.last
        if  last == removed {
            minStack.removeLast()
        }
            
            
             
    }
    
    func top() -> Int {
        return stack.isEmpty ? -1 : stack.last!
        
    }
    
    func getMin() -> Int {
        return minStack.isEmpty ? -1  : minStack.last!
        
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */