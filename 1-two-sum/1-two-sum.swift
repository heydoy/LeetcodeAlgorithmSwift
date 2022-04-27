import Foundation
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       let size = nums.count 
        
        for i in 1..<size {
            let first = nums[size-i]
            for j in 0..<size-i {
                let second = nums[j]
                if first + second == target {
                    return [j, size-i] 
                } 
            }
        } 
        return []  
    }
}