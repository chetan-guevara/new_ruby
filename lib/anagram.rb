#require('pry.rb')
class String
  define_method(:anagram?) do |arg|
    arg_array = arg.split("")
    arg_sorted = arg_array.sort
    self_array = self.split("")
    self_sorted = self_array.sort
    return self_sorted == arg_sorted
  end
end