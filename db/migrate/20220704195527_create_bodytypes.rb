class CreateBodytypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bodytypes do |t|
      t.string :type
      t.references :actor, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
