### Testing task 1 code:

# Read through the code.
# Comment any errors you can see but do not correct them in this file.

require_relative('card.rb')
class CardGame


  def checkforAce(card)  #this should follow naming convention - check_for_ace(card)
    if card.value = 1 #should use == when checking if equal
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #typo on def and also should be a comma between card1 and card2
  if card1.value > card2.value #should be indented
    return card.name #there is no .name should be .suit
  else
    card2 #should be return card2.suit
  end
end
end #this end should be at the end of the file

def self.cards_total(cards) #function is sittng outside of the class file
  total #total should be set to 0
  for card in cards
    total += card.value
  #need an end here for the loop
    return "You have a total of" + total #cannot add a string and an integer together, need to put total inside a `#{}`
  end #not needed
end
