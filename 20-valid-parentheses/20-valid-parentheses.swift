class Solution {
    let parenthesesMap: [Character:Character] = [  
        ")": "(",
        "}": "{",
        "]": "["
    ]
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for char in s {
            let c = parenthesesMap[char]
            if c == nil {
                stack.append(char)
            } else {
                if stack.popLast() != c {
                    
                    return false
                }
            }
        }
        return stack.count == 0
    }
}


