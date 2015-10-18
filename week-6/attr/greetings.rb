
class NameData
  attr_reader :name
  def initialize
    @name = "Peter"
  end
end

class Greetings
  attr_reader :namedata
  def initialize
    @namedata = NameData.new
  end

  def hello
    p "Hello #{namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new

greet.hello # puts "Hello Student! How wonderful to see you today."
# p "Hello #{greet.namedata.name}"