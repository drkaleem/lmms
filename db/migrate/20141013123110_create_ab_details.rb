class CreateAbDetails < ActiveRecord::Migration
  def change
    create_table :ab_details do |t|
      t.integer :abmaster_id
      t.date :effectivedate
      t.string :addressline1
      t.string :addressline2
      t.string :addressline3
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.boolean :invalid

      t.timestamps
    end
  end
end
