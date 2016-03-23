require('pry.rb')
class String
  define_method(:leet_speak) do
    split_sentence = self.split
    split_sentence.each do |word|
      #spell out all the rules 
      word.gsub!('e','3')
      word.gsub!('o', '0')
      word.gsub!('I','1')
      size = word.length()
      #word[1..size].gsub!('s','z')
      #puts word[1..size]
      word.gsub!('s','z')
      #puts arg
    end
    split_sentence.join(" ")
  end
end