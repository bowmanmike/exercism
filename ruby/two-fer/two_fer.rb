class TwoFer
  def self.two_fer(*name)
    "One for #{name[0] || "you"}, one for me."
  end
end

class BookKeeping
  VERSION = 1
end
