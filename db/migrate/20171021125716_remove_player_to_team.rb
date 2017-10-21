class RemovePlayerToTeam < ActiveRecord::Migration[5.1]
  def change
    remove_reference :teams, :player, foreign_key: true
  end
end
