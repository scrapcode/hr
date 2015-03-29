def maxXor(l, r)
    current_max = 0
    
    (l..r).each do |left|
        (l..r).each do |right|
            current_max = ((left ^ right) > current_max) ? (left ^ right) : current_max
        end
    end
    
    current_max
end
l = gets.to_i
r = gets.to_i
print maxXor(l, r)