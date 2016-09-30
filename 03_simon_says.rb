def echo(string)
  string.to_s
end

def shout(string)
  string.to_s.upcase
end

def repeat(string, num=2)
  ([string] * num).join(' ')
end

def start_of_word(string, num)
  string.slice(0, num)
end

def first_word(string)
  string.split[0]
end

def titleize(string)
    stop_words = %w{and over the}
    string.split.each_with_index { |word, i| !stop_words.include?(word) || i == 0 ? word.capitalize! : word.upcase }.join(' ')
end

puts repeat('hi', 6)
