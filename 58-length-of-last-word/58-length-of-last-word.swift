class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        if let length = s.components(separatedBy:" ").filter({$0 != ""}).last {
            return length.count
        }
        else {
            return 0
        }

    }
}