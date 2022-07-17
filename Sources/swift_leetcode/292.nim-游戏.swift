/*
 * @lc app=leetcode.cn id=292 lang=swift
 *
 * [292] Nim 游戏
 */

// @lc code=start
// class Solution {
    func bestAction(_ n: Int) -> Int{
        for v in 1...3{
            if n%4 == v {
                return v;
            }
        }

        return -1;
    }
    func canWinNim(_ n: Int) -> Bool {
        var total = n;
        var count = 0;
        var isEnd = false;

        while !isEnd{
            var r = bestAction(total);
            if r == -1{
                isEnd = true;
            }else{
                total -= r;
                count+=1;
            }
        }

        return count%2 != 0;

    }
// }
// @lc code=end

