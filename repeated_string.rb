#!/user/bin/ruby

def repeatedString(s, n)
  # Write your code here
  input_arr = s.split('')
  string_length = s.length
  selected_char = input_arr[0]
  counted_first_char = s.count(selected_char)
  cou = n % string_length
  result = counted_first_char * (n / string_length).ceil
  boundry = (n % string_length) - 1
  puts input_arr[0..boundry].join('')
  if string_length > 1
    result += input_arr[0..boundry].join('').count(selected_char)
  else
    result
  end
  result
end

s = 'aba'
n = 10
puts repeatedString(s, n)

