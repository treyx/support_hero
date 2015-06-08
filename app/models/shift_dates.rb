class ShiftDates
  def initialize(from)
    self.from = from[:from]
  end

  include Enumerable

  def each
    return to_enum :each unless block_given?
    current = from
    loop do
      yield current if shift?(current)
      current += 1
    end
  end

  private

  attr_accessor :from

  def shift?(date)
    weekday?(date) && !holiday?(date)
  end

  def holiday?(date)
    Holidays.on(date, :observed).any?
  end

  def weekday?(date)
    monday = 1
    friday = 5
    monday <= date.wday && date.wday <= friday
  end
end
