class CreateHyperLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :hyper_links do |t|
      t.belongs_to :note, null: false, foreign_key: true
      t.integer :mode
      t.string :uuid, unique: true, null: false

      t.timestamps
    end
  end
end
