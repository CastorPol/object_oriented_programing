class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in ruby is an object"
  end
end

chris = Instructor.new("Chris")
chris.greeting

christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn

#unable to call methods that dont belong to particular class unless it is inherited.
