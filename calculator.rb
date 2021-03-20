class Calculator

  BRACKETS = [
      [10000.0, 0],
      [10000.0, 10],
      [30000.0, 20],
      [-1, 30]
  ]

  def self.run
    text = File.open(ARGV[0]).read
    text.each_line do |line|
      tax_owed = calculate(line.to_f)
      print "#{line.to_f}-> #{tax_owed}\n"
    end
  end

  def self.calculate(value)
    total = 0
    BRACKETS.each do |bracket|
      if bracket[0] == -1
        total += value*(bracket[1]/100.0)
      elsif value <= bracket[0]
        total += value*(bracket[1]/100.0)
        return total
      else
        total += bracket[0]*(bracket[1]/100.0)
        value -= bracket[0]
      end
    end
    return total
  end

end

Calculator.run