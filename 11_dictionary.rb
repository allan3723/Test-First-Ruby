class Dictionary
  # TODO: your code goes here!
  def initialize
    @entries = Hash.new
  end

  def entries
    @entries
  end

  def add(input)
    input.is_a?(Hash) ? @entries[input.keys[0]] = input.values[0] : @entries[input] = NIL
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    keywords.include?(key)
  end

  def find(prefix)
    @entries.select{ |key, value| key.start_with?(prefix)}
  end

  def printable
    array = []
    @entries.sort.each do |key, value|
      array << "[#{key}] \"#{value}\""
    end
    array.join("\n")
  end
end
