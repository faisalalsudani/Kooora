class AddSeasonToCompetition < ActiveRecord::Migration[5.1]
  def change
    add_reference :competitions, :season, foreign_key: true
  end
end
