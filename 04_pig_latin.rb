def translate(string)
  capitalize = false
  words = string.split.map! do |word|
    capitalize = word[0] == word[0].upcase
    vowel_loc = word.index(/[aeiouAEIOU]/)
    if vowel_loc >= 1 && word[vowel_loc-1..vowel_loc] == 'qu'
      next_vowel = word[vowel_loc+1..word.length].index(/[aeiouAEIOU]/) + 1 + vowel_loc
      vowel_loc = next_vowel
    end
    vowel_loc == 0 ? word = word + 'ay' : word = word.slice(vowel_loc, word.length) + word.slice(0, vowel_loc) + 'ay'
    capitalize ? word = word.capitalize : word
    punc_index = word.index(/[?!.]/)
    if (punc_index != NIL)
      word = word.slice(0, punc_index) + word.slice(punc_index + 1, word.length) + word[punc_index]
    end
    word
  end
  words.join(' ')
end
