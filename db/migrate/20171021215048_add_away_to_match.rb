class AddAwayToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :awayTeam_id, :integer
  end
end
