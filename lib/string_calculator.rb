class StringCalculator
    def self.add(input)
        return 0 if input.empty?
        
        if input.start_with?("//")
            delimiter_line, numbers_string = input.split("\n", 2)
            return 0 unless numbers_string 
            
            delimiter = delimiter_line[2..-1]
            numbers = numbers_string.split(delimiter).map(&:to_i)
        else
            numbers = input.split(/,|\n/).map(&:to_i)
        end
        
        numbers.sum
    end
  end