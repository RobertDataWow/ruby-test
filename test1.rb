def solution(n)
  n.to_s.chars.sort { |a, b| b <=> a }.join.to_i
end

# Test
puts solution(123)
