require 'date'

class Calculator

  def initialize(date)
    @date = Date.today
    @birthday = Date.parse(date)
  end

  attr_accessor :date, :birthday

  def difference
    diff = @birthday - @date
    diff.to_i
  end

end