class Battle < ActiveRecord::Base

  belongs_to :card1, class_name: "Card"
  belongs_to :card2, class_name: "Card"

  scope :search_by_cards, lambda{|carda, cardb| where("(card1_id = ? AND card2_id = ?) OR (card1_id = ? AND card2_id = ?)", carda.id, cardb.id, cardb.id, carda.id)}

  def add_vote(name)
    if self.card1.name == name
      self.card1_votes += 1
    else
      self.card2_votes += 1
    end
    self.save
  end

  def winner
    if self.card1_votes > card2_votes
      self.card1
    elsif self.card2_votes > card1_votes
      self.card2
    else
      "Tie"
    end
  end
end
