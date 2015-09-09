class CreateGame < ActiveRecord::Migration
  def change
    enable_extension 'hstore'
    create_table :games do |t|
      t.text :deck, array:true, default: []
      t.text :player_hand,  array:true, default: []
      t.text :dealer_hand,  array:true, default: []
      t.boolean :playing                   # false if game over -- could implicitly determine
      t.integer :num_decks
      t.integer :rules                     # surrender avail, double down etc...
      t.integer :dealer_type              # dealer behavior -- stand on soft-17 etc...
      t.integer :seed                      # in case we want to reproduce a hand history assuming identical rng implementations
      t.hstore :outcome
    end
  end
end
