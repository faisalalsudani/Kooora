class AddMatchToTeam < ActiveRecord::Migration[5.1]
  def change
    add_reference :teams, :match, foreign_key: true
  end
end
