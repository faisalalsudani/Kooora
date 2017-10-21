class AddCountryToCompetition < ActiveRecord::Migration[5.1]
  def change
    add_reference :competitions, :country, foreign_key: true
  end
end
