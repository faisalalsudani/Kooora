class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :home_team
      t.integer :away_team
      t.integer :home_team_score
      t.integer :away_team_score
      t.datetime :date

      t.timestamps
    end
  end
end
