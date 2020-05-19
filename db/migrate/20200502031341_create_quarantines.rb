class CreateQuarantines < ActiveRecord::Migration[6.0]
  def change
    create_table :quarantines do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :days
      
      
      t.timestamps
    end
  end
end
