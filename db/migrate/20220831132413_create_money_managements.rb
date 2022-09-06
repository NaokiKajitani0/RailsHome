class CreateMoneyManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :money_managements do |t|
      t.string :category
      t.integer :fee
      t.text :remarks
      t.references :costs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
