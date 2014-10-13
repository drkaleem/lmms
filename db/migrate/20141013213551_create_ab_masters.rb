class CreateAbMasters < ActiveRecord::Migration
  def change
    create_table :ab_masters do |t|
      t.integer :membercode
      t.string :salutation
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :addresstype
      t.date :dob
      t.string :group
      t.string :subgroup1
      t.string :subgroup2
      t.boolean :inactive
      t.string :status

      t.timestamps
    end
  end
end
