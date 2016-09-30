class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    second = @seconds % 60
    second = second < 10 ? '0' + second.to_s : second.to_s
    minute = (@seconds / 60) % 60
    minute = minute < 10 ? '0' + minute.to_s : minute.to_s
    hour = @seconds / 3600
    hour = hour < 10 ? '0' + hour.to_s : hour.to_s
    [hour, minute, second].join(":")
  end
end
