class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :seller
      t.integer :buyer
      t.references :product, foreign_key: true

      t.timestamps
    end

    add_foreign_key :sales, :users, column: :seller
    add_foreign_key :sales, :users, column: :buyer


  end
end
