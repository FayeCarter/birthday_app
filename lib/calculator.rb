require 'date'

class Calculator

  def initialize(date)
    @date = Date.today
    @birthday = Date.parse(date)
  end

  attr_accessor :date, :birthday

  def difference
    diff = (@birthday - @date).to_i
    diff < 0 ? diff += 365 : diff
    diff
  end
end