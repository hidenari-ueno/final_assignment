class CreateEngineerSkils < ActiveRecord::Migration[6.1]
  def change
    create_table :engineer_skils do |t|
      t.references :engineer,  null: false, foreign_key: true
      t.references :skil,  null: false, foreign_key: true
      t.integer :status, null: false
      t.integer :term
      t.text :note
      t.timestamps
    end
  end
end
