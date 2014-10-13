class CreateAbPhones < ActiveRecord::Migration
  def change
    create_table :ab_phones do |t|
      t.integer :abmaster_id
      t.date :effectivedate
      t.string :phonetype
      t.integer :phonenum
      t.boolean :preferred
      t.boolean :invalid

      t.timestamps
    end
  end
end
