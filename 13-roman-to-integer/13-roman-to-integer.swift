class Solution {
    var romanToNumber: [Character:Int] = [
            "I": 1, 
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
    
    func romanToInt(_ s: String) -> Int {
        var previous: Int = 0
        var value: Int = 0
        
        for i in s {
            // 딕셔너리에 해당 값이 없으면 0
            let current = romanToNumber[i] ?? 0
            
            // 현재 숫자가 이전 값보다 큰 경우 이전 값을 빼고 아닐 경우 더함
            if current <= previous {
                value = value + previous
            } else {
                value = value - previous
            }
            previous = current
        }
        // for loop에서 이전 값만 더하거나 빼주었으므로 한 번 더 더해줘야함. 
        value += previous
            
        return value
        
    }
}