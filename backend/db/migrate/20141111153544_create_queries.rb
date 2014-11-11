class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.text :ref, null: false, unique: true
      t.text :author, null: false
      t.text :title, null: false
      t.text :sql, null: false

      t.timestamps
    end
  end
end
