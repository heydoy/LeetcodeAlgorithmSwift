class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var original: Int = x
        var reverse: Int = 0
        var remainder: Int
        
        if x < 0 {
            return false
        }
        
        while (original != 0) {
            remainder = original % 10
            reverse = reverse * 10 + remainder
            original = original / 10
        }
        
        if x == reverse {
            return true
        } else {
            return false
        }
    }
}