class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :hair_color
      t.string :eye_color
      t.string :height
      t.string :skin_tone

      t.timestamps
    end
  end
end
