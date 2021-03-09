class CreateBrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :brooms do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :twigs
      t.integer :power
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
