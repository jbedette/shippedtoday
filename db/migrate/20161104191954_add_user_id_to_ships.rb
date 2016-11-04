class AddUserIdToShips < ActiveRecord::Migration[5.0]
  def change
    add_column :ships, :fieldname, :string
  end
end
