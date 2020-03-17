class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :fullName
      t.integer :phoneNumber
      t.string :emailAddress
      t.string :image
      t.text :notes

      t.timestamps
    end
  end
end
