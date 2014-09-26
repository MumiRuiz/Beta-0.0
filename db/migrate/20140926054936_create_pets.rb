class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.string :age
      t.string :breed
      t.string :type
      t.string :gender
      t.string :size
      t.string :special_reeds
      t.references :instituion, index: true

      t.timestamps
    end
  end
end
