class Hashmap
  INITIAL_CAPACITY = 16
  LOAD_FACTOR = 0.75

  attr_accessor :length

  def initialize
    @capacity = INITIAL_CAPACITY
    @load_factor = LOAD_FACTOR
    @buckets = Array.new(@capacity) { []}
    @length = 0
  end
end
