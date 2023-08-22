def solution(a, b, c)
  words_arr = [[*('a' * a).chars], [*('b' * b).chars], [*('c' * c).chars]]
  new_word = ''
  words_arr = words_arr.sort_by { |x| -x.length }
  while true
    words = words_arr.first
    letter = words.last
    if (letter.nil?) || (new_word.length >= 2 && new_word[-1] == letter && new_word[-2] == letter)
      next_words = words_arr[1]
      return new_word if next_words.empty?
      new_word += next_words.pop
      next
    end
    new_word += words.pop
    words_arr = words_arr.sort_by { |x| -x.length }
  end
end
