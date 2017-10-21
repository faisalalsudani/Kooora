class AddHomeTeamToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :home_team, :string
  end
end
