class Card
  # attr_reader :rank, :suit
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # memoize
  let(:card) { Card.new('Ace', 'Spades') }
  # Bang method ! like before method
  # let!(:card) { Card.new('Ace', 'Spades') }
  # Method
  # def card
  #     Card.new('Ace', 'Spades')
  # end

  # Hook
  # before do
  #     @card = Card.new('Ace', 'Spades')
  # end

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, I expected, #{comparison} but I got #{card.suit} instead!"
  end
end
