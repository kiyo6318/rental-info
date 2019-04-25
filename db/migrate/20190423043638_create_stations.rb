class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station_name
      t.integer :walktime

      t.timestamps
    end
  end
end
