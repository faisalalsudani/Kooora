class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :homeTeam
      t.string :awayTeam
      t.integer :homeTeamScore
      t.integer :awayTeamScore

      t.timestamps
    end
  end
end
