#!/user/bin/ruby
#https://www.hackerrank.com/challenges/acm-icpc-team/problem
#  The first is the maximum number of topics known, and the second is the number of teams that know that number of topics.

def acmTeam(topic)
  # Write your code here
  no_candidate = topic.length
  sorted_array_index = []
  topic.each_with_index do |selected_topic, index|
    topic_arr = selected_topic.split('')
    topic_sum = topic_arr.map(&:to_i).reduce(:+)
    selected_obj = { topic_sum: topic_sum, index: index, selected_topic: selected_topic }
    sorted_array_index.push(selected_obj)
  end
  topic_known = 0
  teams = 0
  hash_result = {}
  sorted_array_index = sorted_array_index.sort_by { |obj| -obj[:topic_sum] }
  puts sorted_array_index

  max_topic_known = sorted_array_index[0]
  puts '---------------------------------'

  puts max_topic_known

  max_topic_known_arr = max_topic_known[:selected_topic]
  arr_length = sorted_array_index.length - 1
  arr_length.times do |index|
    selected_index = index + 1
    puts '---------------------------------'
    puts sorted_array_index[selected_index]
    sorted_array_index[selected_index][:selected_topic].split('').each_with_index do |selected_topic, global_index|
      if selected_topic == '1'
        topic_known += 1
      elsif max_topic_known_arr[global_index] == '1'
        topic_known += 1
      end
    end
    puts 'topic_known'

    puts topic_known

    if hash_result[topic_known]
      teams += 1
      hash_result[topic_known] +=  1
    else
      hash_result[topic_known] = teams
    end
    topic_known = 0
  end
  puts 'hash_result'

  puts hash_result
  [topic_known, teams]
end

n = 3
topic = %w[10101 11110 00010]
puts acmTeam(topic)
