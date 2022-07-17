/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
// class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int,Int>();
        var res:[Int] = [];

        for (index,value) in nums.enumerated(){
            let other = target - value;
            if dict[other] != nil{
            let j = dict[other]!;
               res.append(contentsOf: [index,j])
               break;
            }
            dict[value] = index;
        }

        return res
    }
// }
// @lc code=end

