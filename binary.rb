class Binary
  VERSION = 2
  def initialize(binary)
    raise ArgumentError.new("error") unless valid?(binary)
    @binary = binary
  end

  def to_decimal
    digit_index = @binary.length - 1
    digit_array = @binary.chars
    base10 = 0

    digit_array.each do |digit|
      base10 += (digit.to_i * (2 ** digit_index))
      digit_index -= 1
    end
    return base10
  end

  def valid?(binary)
    binary.chars.all? { |char| ['0', '1'].include?(char)}
  end
end