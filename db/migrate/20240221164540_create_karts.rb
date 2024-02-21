class CreateKarts < ActiveRecord::Migration[7.1]
  def change
    create_table :karts do |t|
      t.string :size
      t.string :color
      t.string :speed
      t.string :maneuverability
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
