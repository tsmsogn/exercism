module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(n)
    answer = ''
    if n % 3 == 0
      answer += 'Pling'
    end
    if n % 5 == 0
      answer += 'Plang'
    end
    if n % 7 == 0
      answer += 'Plong'
    end

    if answer == ''
      n.to_s
    else
      answer
    end
  end
end
