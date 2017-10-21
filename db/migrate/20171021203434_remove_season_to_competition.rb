class RemoveSeasonToCompetition < ActiveRecord::Migration[5.1]
  def change
    remove_reference :competitions, :season, foreign_key: true
  end
end
