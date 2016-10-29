
class Complement

  #* `G` -> `C`
  # * `C` -> `G`
  # * `T` -> `A`
  # * `A` -> `U`
  @dnaTorna = { 'G' =>'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna strand
    strand.chars.map do |nuc| return '' unless    "GCTA".include?(nuc)
    @dnaTorna[nuc]
    end.join
  end
end
