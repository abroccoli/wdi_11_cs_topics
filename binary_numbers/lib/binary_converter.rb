module BinaryConverter
  def self.to_fixnum(binary_string)
    # binary_string.to_i(2)
    result = []
    binary_string.split('').reverse.each_with_index{|x, i| result << (x == '1' ? (2 ** i) : 0)}
    return result.inject(&:+)
  end
end
