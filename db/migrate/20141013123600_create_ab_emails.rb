class CreateAbEmails < ActiveRecord::Migration
  def change
    create_table :ab_emails do |t|
      t.integer :abmaster_id
      t.date :effectivedate
      t.string :emailtype
      t.string :emailid
      t.boolean :preferred
      t.boolean :invalid

      t.timestamps
    end
  end
end
