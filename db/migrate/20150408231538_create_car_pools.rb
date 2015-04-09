class CreateCarPools < ActiveRecord::Migration
  def change
    create_table :car_pools do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.string :location_name
      t.string :location_address
      t.string :location_url
      t.string :details

      t.timestamps null: false
    end
  end
end
