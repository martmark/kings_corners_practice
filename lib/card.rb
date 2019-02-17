class Card
  SUIT_COLORS = {
    :clubs    => :black,
    :diamonds => :red,
    :hearts   => :red,
    :spades   => :black
  }

  VALUE_STRINGS = {
    :ace   => "1",
    :two   => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "11",
    :queen => "12",
    :king  => "13",
  }

  # Returns an array of all suits.
  def self.suits
    SUIT_COLORS.keys
  end

  # Returns an array of all values.
  def self.values
    VALUE_STRINGS.keys
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    unless Card.suits.include?(suit) and Card.values.include?(value)
      raise "illegal suit (#{suit}) or value (#{value})"
    end

    @suit, @value = suit, value
  end

  def suit_color
    SUIT_COLORS[suit]
  end

  def card_value
    VALUE_STRINGS[value].to_i
  end

  # Compares two cards to see if they're equal in suit & value.
  def ==(other_card)
    return false if other_card.nil?

    self.suit == other_card.suit &&
    self.value == other_card.value
  end

  def to_s
    SUIT_COLORS[suit].to_s + " " + VALUE_STRINGS[value]
  end
end
