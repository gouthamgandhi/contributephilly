class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :email

      t.timestamps
    end
  end
end
