#
# URL: https://www.hackerrank.com/challenges/the-love-letter-mystery
#

=begin
user_input = "1
abc
abcba
abcd
cba"
=end

n = gets.to_i
(0...n).each do |i|
  word = gets.chomp()

  # reset steps for each word
  steps = 0

  vals = word.split('').map(&:ord)

  # break into sides
  if vals.count.even?
    l = vals[0, ((vals.count / 2))]
    r = vals[(vals.count / 2), (vals.count - 1)]
  else
    l = vals[0, (vals.count/2).floor]
    r = vals[((vals.count/2).ceil + 1), (vals.count - 1)]
  end

  # reverse one side for comparison
  r = r.reverse

  l.each_with_index do |leftVal, index|
    if leftVal.ord < r[index].ord

      # add steps to counter
      steps += ( r[index].ord - leftVal.ord )
      r[index] = leftVal
    elsif r[index].ord < leftVal.ord
      steps += ( leftVal.ord - r[index].ord )
      leftVal = r[index]
    end
  end

  puts steps
end