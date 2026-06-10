class Hashmap
  attr_accessor :capacity, :load_factor
  attr_reader :length

  INITIAL_CAPACITY = 16
  LOAD_FACTOR = 0.75

  def initialize
    @capacity = INITIAL_CAPACITY
    @load_factor = LOAD_FACTOR
    @buckets = Array.new(@capacity) { []}
    @length = 0
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

end
