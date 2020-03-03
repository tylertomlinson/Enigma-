class Shift

  def initialize(key, offset)
    @key = Key.new(key)
    @offset = Offset.new(offset)
  end

  def shifter
    @key.key_splitter.merge(@offset.offset_hash) { |key, key_value, offset_value| key_value + offset_value }
  end


end
