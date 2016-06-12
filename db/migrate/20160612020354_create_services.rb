class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :agency_name
      t.string :address_1
      t.string :address_2
      t.string :tel
      t.string :fax
      t.string :email
      t.string :website
      t.integer :category_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
