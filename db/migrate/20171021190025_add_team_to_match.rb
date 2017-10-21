class AddTeamToMatch < ActiveRecord::Migration[5.1]
  def change
    add_reference :matches, :team, foreign_key: true
  end
end
