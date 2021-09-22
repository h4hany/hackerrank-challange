#!/user/bin/ruby
#https://www.hackerrank.com/challenges/acm-icpc-team/problem
#  The first is the maximum number of topics known, and the second is the number of teams that know that number of topics.
def bit_on_bit (topic, next_topic)
  (topic.to_i(2) | next_topic.to_i(2)).to_s(2).split('').map(&:to_i).reduce(0, :+)
end

def debug_info(var_name, value)
  puts "#{var_name}: #{value}"
end

def acmTeam(topic)
  # Write your code here
  teams = 0
  known_topics = 0
  topics_length = topic.length
  topic.each_with_index do |selected_topic, index|
    ((index + 1)..topics_length - 1).each do |topics_length_index|
      next_topic = topic[topics_length_index]
      selected_know_topic = bit_on_bit(selected_topic, next_topic)
      if selected_know_topic > known_topics
        teams = 1
        known_topics = selected_know_topic
      elsif selected_know_topic == known_topics
        teams += 1
      end
    end
  end
  [known_topics, teams]
end
def time_check
  start = Time.now
  puts 'start time'
  yield
  puts 'end time'
  finish = Time.now
  diff = finish - start
  debug_info('time_finish', diff)
end
n = 3
topic = %w[10101 11110 00010]
n = 3
topic = %w[10101 11100 11010 00101]
puts acmTeam(topic)
