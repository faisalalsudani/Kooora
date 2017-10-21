class AddCountryToTeams < ActiveRecord::Migration[5.1]
  def change
    add_reference :teams, :country, foreign_key: true
  end
end
