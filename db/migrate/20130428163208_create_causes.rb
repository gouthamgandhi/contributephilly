class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.text :name
      t.text :logo

      t.timestamps
    end
  end
end
