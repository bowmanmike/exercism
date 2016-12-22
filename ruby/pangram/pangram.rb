class Pangram
  def self.is_pangram?(string)
    string.downcase.split('').uniq.delete_if { |char| char =~ /[^a-z]/ }.count == 26
  end

end

module BookKeeping
  VERSION = 2
end
