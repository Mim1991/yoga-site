class AddYogaClassToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :yoga_class, null: false, foreign_key: true
  end
end
