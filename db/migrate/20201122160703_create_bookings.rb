class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :people
      t.string :status
      t.references :users, null: false, foreign_key: true
      t.references :yoga_classes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
