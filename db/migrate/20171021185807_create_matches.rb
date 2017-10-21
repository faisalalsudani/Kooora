class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.integer :team1_score
      t.integer :team2_score

      t.timestamps
    end
  end
end
