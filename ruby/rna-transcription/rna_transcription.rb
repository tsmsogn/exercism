module BookKeeping
  VERSION = 4
end

class Complement
  DNS_TO_RNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna)
    return '' unless valid?(dna)
    dna.gsub(/./, DNS_TO_RNA_MAP)
  end

  private

  def self.valid?(dna)
    dna.each_char.all? { |c| DNS_TO_RNA_MAP.include? c }
  end
end
