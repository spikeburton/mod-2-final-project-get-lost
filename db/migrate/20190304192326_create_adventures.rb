class CreateAdventures < ActiveRecord::Migration[5.2]
  def change
    create_table :adventures do |t|
      t.string :location
      t.string :topography

      t.timestamps
    end
  end
end
