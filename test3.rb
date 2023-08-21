def solution(a, b, c)
  word_arr = [[*("a" * a).chars], [*("b" * b).chars], [*("c" * c).chars]]
  new_word = ""
  word_arr = word_arr.sort_by { |x| -x.length }
  while true
    words = word_arr.first
    letter = words.last
    if (letter.nil?) || (new_word.length >= 2 && new_word[-1] == letter && new_word[-2] == letter)
      next_words = word_arr[1]
      if next_words.empty?
        return new_word
      end
      new_word += next_words.pop
      next
    end
    new_word += words.pop
    word_arr = word_arr.sort_by { |x| -x.length }
  end
end

# Test
puts solution(5, 1, 8)
