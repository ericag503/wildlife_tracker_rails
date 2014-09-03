class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.float :latitude
      t.float :longitude
      t.integer :specie_id

      t.timestamps
    end
  end
end
