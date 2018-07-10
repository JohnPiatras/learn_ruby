class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(s)
    @seconds = s
  end

  def time_string
    minutes = @seconds / 60
    hours = minutes / 60
    minutes = minutes % 60

    pad(hours) + ":" + pad(minutes) + ":" + pad(seconds % 60)
  end

  private

  def pad(number)
    number_string = "" + number.to_s
    if number_string.length == 1
      number_string = "0" + number_string
    end

    number_string
  end
end
