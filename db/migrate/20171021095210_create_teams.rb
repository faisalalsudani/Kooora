class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.integer :points, :default => 0
      t.references :countries, foreign_key: true

      t.timestamps
    end
  end
end
