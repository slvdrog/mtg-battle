class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :card1_votes
      t.integer :card2_votes

      t.integer :card1_id
      t.integer :card2_id

      t.timestamps
    end

    add_index :battles, :card1_id, name: 'card1_id_ix'
    add_index :battles, :card2_id, name: 'card2_id_ix'
    add_index :battles, [:card1_id, :card2_id]


  end
end
