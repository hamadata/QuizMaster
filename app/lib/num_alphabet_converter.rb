
module NumAlphabetConverter

  def self.convert(val)
    raise 'not char' if val.to_s.to_sym.match(/[^0-9]/)
    return 'zero' if val == 0   
    return conv_1_digit(val) if val < 10 
    return conv_teen(val) if val < 20
    
    idx = 0
    result = []
    loop do
      break if val == 0
      three_digit = val % 1000
      val = (val - val % 1000) / 1000
      result.push self.conv_3_digit(three_digit)
      result.push self.llion(idx) if val != 0 && (val % 1000) != 0
      idx = idx + 1
    end
    result.reject{ |d| d == '' }.reverse.join(' ') 
  end

  def self.llion(index)
    ['thousand',
     'million',
     'billion'][index]
  end

  def self.conv_1_digit(one_digit)
    {
      "0": '',
      "1": 'one',
      "2": 'two',
      "3": 'three',
      "4": 'four',
      "5": 'five',
      "6": 'six',
      "7": 'seven',
      "8": 'eight',
      "9": 'nine'
    }[one_digit.to_s.to_sym]
  end

  def self.conv_teen(two_digit)
    {
      "10": 'ten',
      "11": 'eleven',
      "12": 'twelve',
      "13": 'thirteen',
      "14": 'fourteen',
      "15": 'fifteen',
      "16": 'sixteen',
      "17": 'seventeen',
      "18": 'eighteen',
      "19": 'nineteen'
    }[two_digit.to_s.to_sym]
  end

  def self.conv_ty(one_digit)
    {
      "2": 'twenty',
      "3": 'thirty',
      "4": 'forty',
      "5": 'fifty',
      "6": 'sixty',
      "7": 'seventy',
      "8": 'eighty',
      "9": 'ninety'
    }[one_digit.to_s.to_sym]
  end

  def self.conv_2_digit(two_digit)
    return conv_1_digit(two_digit) if two_digit < 10
    return conv_teen(two_digit) if two_digit < 20
    last_one_digit = self.conv_1_digit(two_digit % 10)
    unless last_one_digit.empty? 
      self.conv_ty(two_digit / 10) + "-" + last_one_digit
    else
      self.conv_ty(two_digit / 10) 
    end
  end

  def self.conv_3_digit(three_digit)
    result = []
    return "" if three_digit == 0 
    unless three_digit / 100 == 0
      result.push conv_1_digit(three_digit / 100) 
      result.push 'hundred'
    end
    result.push conv_2_digit(three_digit % 100)
    result.select{ |elem| elem != '' }.join(" ")
  end 

end

