class RemovePeopleFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :people, :integer
  end
end
