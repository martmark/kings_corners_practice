class Card
  SUIT_COLORS = {
    clubs:    :black,
    diamonds: :red,
    hearts:   :red,
    spades:   :black
  }

  SUIT_SYMBOLS = {
    clubs:    '♣',
    diamonds: '♦',
    hearts:   '♥',
    spades:   '♠'

  }

  VALUE_RANKS = {
    ace:    1,
    two:    2,
    three:  3,
    four:   4,
    five:   5,
    six:    6,
    seven:  7,
    eight:  8,
    nine:   9,
    ten:    10,
    jack:   11,
    queen:  12,
    king:   13,
  }

  # Returns an array of all suits.
  def self.suits
    SUIT_COLORS.keys
  end

  # Returns an array of all values.
  def self.values
    VALUE_RANKS.keys
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    unless Card.suits.include?(suit) and Card.values.include?(value)
      raise "illegal suit (#{suit}) or value (#{value})"
    end

    @suit, @value = suit, value
  end

  def color
    SUIT_COLORS[suit]
  end

  def rank
    VALUE_RANKS[value]
  end

  def to_str
    value.to_s.capitalize + " of " + suit.to_s.capitalize
  end
end
