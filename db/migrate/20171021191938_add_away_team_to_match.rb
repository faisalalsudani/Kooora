class AddAwayTeamToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :away_team, :string
  end
end
