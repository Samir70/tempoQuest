class CreateStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :studies do |t|
      t.string :title
      t.text :content
      t.integer :targetTempo
      t.integer :curTempo
      t.string :backingTrack
      t.references :practiseStyle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
