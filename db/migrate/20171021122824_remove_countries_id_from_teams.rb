class RemoveCountriesIdFromTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :countries_id
  end
end
