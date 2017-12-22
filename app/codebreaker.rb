class Codebreaker
  class Game
    attr_reader :output


    def initialize(output)
      @output = output
      @add_plus = 0
      @add_minus = 0
    end

    def start(secret_number)
      @secret_number = secret_number
      @unknown = @secret_number.split("").map { |number| number.to_i }
      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def print_minus
      "-" * @add_minus
    end

    def print_plus
      "+" * @add_plus
    end



    def guess(input)
      guessing = input.split("").map { |num| num.to_i }
      if @secret_number.length != input.length
        output.puts "Try guessing a number with four digits"
      else
        for exact in 0..3
          @add_plus += 1 if guessing[exact] == @unknown[exact]
        end
        for exact in 0..3
          for count in 0..3
            if guessing[count] == @unknown[exact]
              @add_minus += 1
              guessing[count]= -1
              break
            end
          end
        end


          @add_minus -= @add_plus

        if @add_minus == 0 && @add_plus == 0
          spit = ''
        elsif @add_plus == 4
          spit = print_plus
        elsif @add_minus == 0
          spit = print_plus if @add_plus != 0
        elsif @add_plus == 0
          spit = print_minus if @add_minus != 0

        end
        output.puts(spit)
      end
    end
  end
end
