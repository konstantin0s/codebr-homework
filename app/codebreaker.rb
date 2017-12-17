class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end


    def guess(input)
      @input = input




      if @secret_number.length != @input.length
               output.puts "Try guessing a number with four digits"
             elsif @secret_number.empty? && @input.empty?
             else
             end



if @input[0] == @secret_number[1]
   output.puts "-"
elsif @secret_number[0] == @input[0]
   output.puts "+"
end



if @secret_number[1][2] == @input[0][1]
   output.puts "--"
end
if @secret_number[1][2] == @input[0][2]
   output.puts "+-"
end

   @secret_number.each_char.with_index do | key, c |
      if input.include?(key) && c == input.index(key)
   output.puts "+-"
      end
   end


str = []
  @secret_number.each_char.with_index do |x, y|
      if input.include?(x) && y == input.index(x)
          str  << "+"
      else
          str  << "+"
      end
         output.puts str.join("")
     end


array = []
  @secret_number.each_char.with_index do |minus, zt|
    if input.include?(minus) || zt == input.index(minus)
       array << "-"
    end
       output.puts array.join("")
    end

put = []
  @secret_number.each_char.with_index do |to ,mh|
    if input.include?(to) && mh == input.index(to)
      put << "++-"
    end
     output.puts put.join("")
    end

sav = []
  @secret_number.each_char.with_index do |ug ,ik|
    if input.include?(ug) && ik == input.index(ug)
       sav << "++--"
    end
       output.puts put.join("")
    end

    end
  end
end
