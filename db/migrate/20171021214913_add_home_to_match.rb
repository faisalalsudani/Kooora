class AddHomeToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :homeTeam_id, :integer
  end
end
