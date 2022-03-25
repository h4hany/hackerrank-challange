#!/user/bin/ruby
# https://leetcode.com/problems/longest-palindromic-substring/
# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length == 1
  return s if s.length == 2 && s == s.reverse
  result = ''
  reverse_result = []
  str_arr = s.chars
  str_arr.each do |char|
    result += char
    reverse_result.push(result)
  end
  max_palin = ''
  puts reverse_result.length
  reverse_result.each do |ch|
    if ch == ch.reverse
      max_palin = ch
    end
    index = 1
    while index < ch.length
      y = ch[index..ch.length]
      if y == y.reverse
        max_palin = y.length > max_palin.length ? y : max_palin
      end
      index += 1
    end
  end
  max_palin
end

def longest_palindrome2(s)
  return s if s.length == 1
  return s if s.length == 2 && s == s.reverse
  result = ''
  max_plain = ''
  start = 0
  last = 0
  str_arr = s.chars
  reverse_result = []

  # "babad"
  while start < s.length
    result += str_arr[start]
    if result == result.reverse
      reverse_result.push(result)
      max_plain = result.length > max_plain.length ? result : max_plain
    end
    index = 1
    while index < result.length
      y = result[index..result.length]
      if y == y.reverse
        reverse_result.push(y)
        max_plain = y.length > max_plain.length ? y : max_plain
      end
      index += 1
      # last = index
    end
    # puts index
    start+= 1
    # result = str_arr[start..str_arr.length].join('')

  end
  puts result

  puts reverse_result.to_s
  max_plain
end

# s = "babad"
# s = "cbbd"
s = "ac"
# s = "ccc"
s = "eabcb"

puts longest_palindrome2(s)
