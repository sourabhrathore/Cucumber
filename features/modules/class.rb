require_relative "first"
require_relative "second"

class Collect
  include First
  include Second

  def method_one
    super
    puts "method_one of class"
  end
end

obj = Collect.new
obj.method_one