class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :fever
      t.string :cough
      t.string :breath
      t.string :throat
      t.string :nose
      t.string :other
      t.timestamps
    end
  end
end
