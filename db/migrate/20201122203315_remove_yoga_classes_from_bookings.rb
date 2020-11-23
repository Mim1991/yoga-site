class RemoveYogaClassesFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :yoga_classes, null: false, foreign_key: true
  end
end
