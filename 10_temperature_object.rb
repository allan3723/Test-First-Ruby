class Temperature
  # TODO: your code goes here!
  def initialize(temperature)
    if (temperature[:f] != NIL)
      @f = temperature[:f].to_f
      @c = ftoc(@f)
    else
      @c = temperature[:c].to_f
      @f = ctof(@c)
    end
  end

  def in_fahrenheit
    @f
  end

  def in_celsius
    @c
  end

  def self.from_celsius(temperature)
    Temperature.new(:c => temperature)
  end

  def self.from_fahrenheit(temperature)
    Temperature.new(:f => temperature)
  end

  def ftoc(f)
    (f.to_f - 32) * (5.0 / 9.0)
  end

  def ctof(c)
    c.to_f * (9.0 / 5.0) + 32
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c.to_f
    @f = ctof(@c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f.to_f
    @c = ftoc(@f)
  end
end
