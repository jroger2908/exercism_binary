class Binary
  VERSION = 2
  def initialize(binary_str)
    raise ArgumentError.new("Not a valid binary number") unless valid?(binary_str)
    @binary_str = binary_str
  end

  def to_decimal
    digits = @binary_str.chars.reverse
    base10 = 0

    digits.each_with_index do |digit, index|
      base10 += (digit.to_i * (2 ** index))
    end
    return base10
  end

  def valid?(binary_str)
    binary_str.chars.all? {|char| ['0', '1'].include?(char)}
  end
end