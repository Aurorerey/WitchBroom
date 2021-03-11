class AddImageToBroom < ActiveRecord::Migration[6.0]
  def change
    add_column :brooms, :image, :string
  end
end
