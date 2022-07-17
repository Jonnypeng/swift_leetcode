/*
 * @lc app=leetcode.cn id=41 lang=swift
 *
 * [41] 缺失的第一个正数
 */

// @lc code=start
class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var dict = Dictionary<Int,Int>();
        let n = nums.count;

        for item in nums{
           dict[item] = item;
        }

        for item in 1...n{
            if dict[item]==nil{
                return item;
            }
        }

        return n + 1;
    }
}
// @lc code=end

