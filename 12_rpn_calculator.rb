class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :value

  def initialize
    @values = []
    @value = 0
  end

  def push(num)
    @values << num
  end

  def plus
    raise 'calculator is empty' if @values.size < 2
    @value = @values.pop + @values.pop
    @values << @value
  end

  def minus
    raise 'calculator is empty' if @values.size < 2
    num = @values.pop
    num2 = @values.pop
    @value = num2 - num
    @values << @value
  end

  def times
    raise 'calculator is empty' if @values.size < 2
    @value = @values.pop * @values.pop
    @values << @value
  end

  def divide
    raise 'calculator is empty' if @values.size < 2
    num = @values.pop.to_f
    num2 = @values.pop.to_f
    @value = num2 / num
    @values << @value
  end

  def tokens(string)
    token = %w(+ - * /)
    string.split.map! {|char| token.include?(char) ? char.to_sym : char.to_i}
  end

  def evaluate(string)
    string.split.each do |char|
      case char
      when '+'
        plus
      when '-'
        minus
      when '*'
        times
      when '/'
        divide
      else
        push(char.to_i)
      end
    end
    @value
  end
end
