require 'date'

class Calculator

  def initialize(date)
    @date = Date.today
    @birthday = Date.parse(date)
  end

  attr_reader :date, :birthday

end