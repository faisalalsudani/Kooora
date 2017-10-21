class AddCometitionToSeason < ActiveRecord::Migration[5.1]
  def change
    add_reference :seasons, :competition, foreign_key: true
  end
end
