#!/user/bin/ruby
# https://leetcode.com/problems/triangle/
# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  sum = 0
  triangle.each do |tr|
    sum += tr.min
  end
  sum
end

triangle = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]
triangle = [[-1],[2,3],[1,-1,-3]]

puts minimum_total(triangle)
