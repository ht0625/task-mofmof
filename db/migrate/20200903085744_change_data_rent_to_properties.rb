class ChangeDataRentToProperties < ActiveRecord::Migration[5.2]
  def change
    change_column :properties, :rent, :integer
  end
end
