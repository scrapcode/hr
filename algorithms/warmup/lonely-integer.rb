def  lonelyinteger( a) 
  counts = Hash.new

  a.each do |num|
    counts[num] =  counts.has_key?(num) ? counts[num]+1 : 1
  end

  puts counts.sort_by { |key,val| val }.first[0]
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)