class CreateSkils < ActiveRecord::Migration[6.1]
  def change
    create_table :skils do |t|
      t.string :skil, null:false
      t.integer :type, null:false
      t.boolean :delete_flag
      t.timestamps
    end
  end
end
