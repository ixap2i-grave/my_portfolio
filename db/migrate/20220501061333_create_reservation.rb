class CreateReservation < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :status
      t.references :user
      t.references :book
      t.timestamps
    end
  end
end
