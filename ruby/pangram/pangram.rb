module BookKeeping
  VERSION = 6
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |s| phrase.downcase.include?(s) }
  end
end
