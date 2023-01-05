def create_deck
  # List of Hearts
  cards = (2..13).map { |n| "#{n}h".to_s}
  cards.append("Ah")
  # List of Diamonds
  diamond_cards = (2..13).map { |n| "#{n}d".to_s}
  diamond_cards.append("Ad")
  cards += diamond_cards
  # List of Clubs
  club_cards = (2..13).map { |n| "#{n}c".to_s }
  club_cards.append("Ac")
  cards += club_cards
  # List of Spades 
  spade_cards = (2..13).map { |n| "#{n}s".to_s }
  spade_cards.append("As")
  cards += spade_cards
  return cards

end

card_deck = create_deck
puts "array = #{card_deck}"
puts card_deck[0] == "2h"   # 2 of Hearts
puts card_deck[8] == "10h"  # 10 of Hearts
puts card_deck[51] == "As"  # Ace of Spades
