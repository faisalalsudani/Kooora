class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :homeTeam_id
      t.integer :awayTeam_id

      t.timestamps
    end
    add_index :matches, :homeTeam_id
    add_index :matches, :awayTeam_id
  end
end
