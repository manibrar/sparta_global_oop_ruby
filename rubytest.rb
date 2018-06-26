class BCalc
  attr_accessor :num1, :num2, :ops, :answer

  def initialize(num1, num2, ops, answer)
    @num1 = 0
    @num2 = 0
    @ops = ops
    @answer = 0
  end

  def testing_initializers
    puts @num1
    puts @num2
    puts @ops
    puts @answer
  end

end
book1 = BCalc.new(4,4,'/',3)

book1.testing_initializers
