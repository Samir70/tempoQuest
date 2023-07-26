class CreateStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :studies do |t|
      t.string :title
      t.text :content
      t.integer :target_tempo
      t.integer :cur_tempo
      t.string :backing_track
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
