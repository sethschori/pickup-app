class CreatePickups < ActiveRecord::Migration[7.0]
  def change
    create_table :pickups do |t|
      t.references :user, null: false, foreign_key: true
      t.date :pickup_date, null: false
      t.string :location_name
      t.string :street_address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
