class Card < ActiveRecord::Base

  has_many :battles_as_card1, class_name: 'Battle', foreign_key: 'card1_id'
  has_many :battles_as_card2, class_name: 'Battle', foreign_key: 'card2_id'
  
  def battles
    battles_as_card1 + battles_as_card2
  end
end
