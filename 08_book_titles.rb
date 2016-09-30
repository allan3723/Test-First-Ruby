class Book
  # TODO: your code goes here!
  def title
    @title
  end

  def title= string
    stop_words = %w{and over the a in of an}
    @title = string.split.each_with_index { |word, i| !stop_words.include?(word) || i == 0 ? word.capitalize! : word.upcase }.join(' ')
  end
end
