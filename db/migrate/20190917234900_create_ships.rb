class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ship do |t|
      t.string :name
      t.string :type
      t.string :booty
      t.integer :pirates_id
    end
  end
end
