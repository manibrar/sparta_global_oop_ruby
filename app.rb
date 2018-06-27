class BasicCalc
  attr_accessor :num1, :num2, :ops

  def initialize (num1, num2, ops)
    @num1 = num1
    @num2 = num2
    @ops = ops
  end
end

class Person
  attr_accessor :name, :sex, :age, :height, :weight

  def initialize(name,sex,age,height,weight)
    @name = name
    @sex = sex
    @age = age
    @height = height
    @weight = weight

    def calories
      if sex == "Male"
        bmr = 66.47 + (13.7 * weight) + (5 * height * 100) - (6.8 * age)
      else
        bmr = 655.1 + (9.6 * weight) + (1.8 * height * 100) - (4.7 * age)
      end
      bmr.to_i
    end

    def bmi
      (weight / (height ** 2)).to_i
    end

    def testing_initializers
      puts @name
      puts @sex
      puts @age
      puts @height
      puts @weight
    end
  end
end

def loop_function
    puts "What's your name?"
    @name_loop = gets.chomp
    puts "What's your sex?"
    @sex_loop = gets.chomp
    puts "What's your age?"
    @age_loop = gets.to_f
    puts "What's your height in m?"
    @height_loop = gets.to_f
    puts "What's your weight in kg?"
    @weight_loop = gets.to_f
end


mani = Person.new("Mani", "male", 29, 1.78, 60)

begin
  puts "What's your name?"
  @name_loop = gets.chomp
  puts "What's your sex?"
  @sex_loop = gets.chomp
  puts "What's your age?"
  @age_loop = gets.to_f
  puts "What's your height in m?"
  @height_loop = gets.to_f
  puts "What's your weight in kg?"
  @weight_loop = gets.to_f
  tester = Person.new("#{@name_loop}","#{@sex_loop}", @age_loop, @height_loop, @weight_loop)

  puts "#{tester.name} has a BMI of #{tester.bmi}. Recommend calorie intake is #{tester.calories} calories"
  puts "Would you like another calculation [y] or exit [x]"
  user = gets.chomp
end until user == 'x'
