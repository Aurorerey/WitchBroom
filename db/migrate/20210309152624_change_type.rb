class ChangeType < ActiveRecord::Migration[6.0]
  def change
    rename_column :brooms, :type, :age
  end
end
