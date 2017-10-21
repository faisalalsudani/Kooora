class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.boolean :status
      t.integer :home_team
      t.integer :away_team

      t.timestamps
    end
  end
end
