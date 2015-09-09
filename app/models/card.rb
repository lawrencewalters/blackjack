#
#  Helper class
#
class Card
  @@RANK = %W(A 2 3 4 5 6 7 8 9 10 J Q K)
  @@SUIT = %W(c d h s)
  @@VALS = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
  
  def self.to_s(card)
    @@RANK[card.to_i % @@RANK.length] + @@SUIT[card.to_i % @@SUIT.length]
  end
  
  def self.to_i(card)
    @@VALS[card.to_i % @@VALS.length]
  end
  
  def self.is_ace?(card)
    (card.to_i % @@RANK.length) == 0
  end  
end
