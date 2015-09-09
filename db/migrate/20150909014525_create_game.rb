class CreateGame < ActiveRecord::Migration
  def change
    enable_extension 'hstore'
    create_table :games do |t|
      t.text :deck, array:true, default: []
      t.text :player_hand,  array:true, default: []
      t.text :dealer_hand,  array:true, default: []
      t.bool :playing                   # false if game over -- could implicitly determine
      t.number :num_decks
      t.number :rules                     # surrender avail, double down etc...
      t.number :dealer_type              # dealer behavior -- stand on soft-17 etc...
      t.number :seed                      # in case we want to reproduce a hand history assuming identical rng implementations
      t.hstore :outcome
    end
  end

  # def up
  #   key :deck, Array                                      # i don't really need to store the entire deck.
  #   # really only need the first N (todo: next version).
  #   key :player_hand, Array, :alias => :ph
  #   key :dealer_hand, Array, :alias => :dh
  #   key :playing, Boolean, :alias => :p                   # false if game over -- could implicitly determine
  #   key :num_decks, Integer, :alias => :n
  #   key :rules, Integer, :alias => :r                     # surrender avail, double down etc...
  #   key :dealer_type, Integer, :alias => :dt              # dealer behavior -- stand on soft-17 etc...
  #   key :seed, Integer, :alias => :s                      # in case we want to reproduce a hand history assuming identical rng implementations
  #   key :outcome, Hash, :alias => :o
  # end
  #
  # def down
  # end
end
