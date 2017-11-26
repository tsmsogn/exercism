module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(source, compare_to)
    raise ArgumentError unless source.size == compare_to.size 
    source.each_char.with_index.count do |c, i|
      source[i] != compare_to[i]
    end
  end
end
