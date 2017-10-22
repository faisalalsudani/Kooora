class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.boolean :active
      t.integer :homeTeamScore
      t.integer :awayTeamScore

      t.timestamps
    end
  end
end
