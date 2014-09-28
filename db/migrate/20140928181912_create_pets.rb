class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :kind
      t.string :gender
      t.string :size
      t.string :story
      t.string :country
      t.string :region
      t.string :city
      t.references :user, index: true
      t.references :institution, index: true

      t.timestamps
    end
  end
end
