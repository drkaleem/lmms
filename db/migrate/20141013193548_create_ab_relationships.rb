class CreateAbRelationships < ActiveRecord::Migration
  def change
    create_table :ab_relationships do |t|
      t.integer :abmaster_id
      t.integer :relatedto_id
      t.string :relationtype

      t.timestamps
    end
  end
end
