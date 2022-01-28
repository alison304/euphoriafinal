class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :f_inicio
      t.date :f_termino
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
