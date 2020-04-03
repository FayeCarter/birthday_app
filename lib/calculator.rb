require 'date'

class Calculator

  def initialize
    @date = Date.today
  end

  attr_reader :date

end