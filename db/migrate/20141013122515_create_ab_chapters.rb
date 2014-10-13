class CreateAbChapters < ActiveRecord::Migration
  def change
    create_table :ab_chapters do |t|
      t.integer :abmaster_id
      t.date :effectivedate
      t.string :chapter
      t.string :subchapter

      t.timestamps
    end
  end
end
