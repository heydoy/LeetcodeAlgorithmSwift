/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var first: Int = 1 // 제약이 1부터이므로
        var end: Int = n
        
        while (first <= end)  {
            let mid: Int = (end - first)/2 + first
            
            if(isBadVersion(mid)) {
                // mid가 bad일경우
                end = mid - 1
            } else {
                // mid가 not bad일 경우
                first = mid + 1
            }
        }
        return first
        
    }
}