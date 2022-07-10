class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left: Int = 0
        var middle: Int = nums.count / 2
        var right: Int = nums.count - 1
        

        
        while left <= right {
            if nums[middle] == target {
                break
            } else if nums[middle] > target {
                right = middle - 1
                middle = (left+right)/2
            } else if nums[middle] < target {
                left = middle + 1
                middle = (left+right)/2
            }
        }
        
        if left > right {
            return [-1, -1]
        }
        
        var firstPosition = middle
        var lastPosition = middle
        
        var didFindFirst = false
        var didFindLast = false
        
        
        while !(didFindFirst && didFindLast) {
            if firstPosition == 0 {
                didFindFirst = true
            } else if firstPosition > 0 {
                if (didFindFirst == false) && (nums[firstPosition-1] == target) {
                    firstPosition -= 1
                } else if (didFindFirst == false) &&  (nums[firstPosition-1] != target) {
                    didFindFirst = true 
                }
            }
            
            if lastPosition == nums.count - 1 {
                didFindLast = true
            }
            else if lastPosition+1 <= nums.count - 1 {
                if (didFindLast == false) && (nums[lastPosition+1] == target) {
                    lastPosition += 1
                } else if (didFindLast == false) && (nums[lastPosition+1] != target) {
                    didFindLast = true
                }
            }
        }
        
        return [firstPosition, lastPosition]
    }
}