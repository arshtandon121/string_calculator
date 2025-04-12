class StringCalculator
    def self.add(input)
      return 0 if input.empty?
      
      if input.start_with?("//")
        delimiter_line, numbers_string = input.split("\n", 2)
        return 0 unless numbers_string || delimiter_line.length < 3
        
        delimiter = delimiter_line[2..-1]
        numbers = numbers_string.split(delimiter).reject(&:empty?).map(&:to_i)
      else
        numbers = input.split(/,|\n/).reject(&:empty?).map(&:to_i)
      end
      
      negatives = numbers.select { |n| n < 0 }
      raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
      
      numbers.sum
    end
  end