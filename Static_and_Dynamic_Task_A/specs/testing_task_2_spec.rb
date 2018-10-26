require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2.rb')

class TestCard < MiniTest::Test

  def setup
    @card1 = Card.new("ace", 1)
    @card2 = Card.new("hearts", 10)
    @card3 = Card.new("joker", 0)
    @card_game = CardGame.new
    @cards = [@card1, @card2, @card3]
  end

  def test_check_for_ace_true
    assert_equal(true, @card_game.check_for_ace(@card1))
  end

  def test_check_for_ace_false
    assert_equal(false, @card_game.check_for_ace(@card2))
  end

  def test_highest_card_hearts
    assert_equal("hearts", @card_game.highest_card(@card1, @card2))
  end

  def test_highest_card_ace
    assert_equal("ace", @card_game.highest_card(@card1, @card3))
  end

  def test_cards_total_11
    assert_equal("You have a total of 11", CardGame.cards_total(@cards))
  end

end
