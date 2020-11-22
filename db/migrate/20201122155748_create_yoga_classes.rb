class CreateYogaClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :yoga_classes do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :address
      t.integer :capacity
      t.date :date
      t.time :time
      t.integer :length

      t.timestamps
    end
  end
end
