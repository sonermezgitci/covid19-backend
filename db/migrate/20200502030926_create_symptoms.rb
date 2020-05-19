class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :fever
      t.integer :tiredness
      t.integer :cough

      t.timestamps
    end
  end
end
