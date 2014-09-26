class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :email
      t.string :country
      t.string :region
      t.string :city
      t.string :telephone
      t.string :website
      t.string :address
      t.string :nit
      t.string :legal_representant

      t.timestamps
    end
  end
end
