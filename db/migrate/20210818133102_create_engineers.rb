class CreateEngineers < ActiveRecord::Migration[6.1]
  def change
    create_table :engineers do |t|
      t.integer :employee_code, null: false, unique: true
      t.string :first_name, null: false
      t.string :given_name, null: false
      t.string :first_name_yomi, null: false
      t.string :given_name_yomi, null: false
      t.integer :company_code, null: false
      t.integer :department_code
      t.integer :birthday, null: false
      t.string :company_mail, null: false, unique: true
      t.string :gmail, unique: true
      t.string :phone_number, unique: true
      # t.string :password_digest, null: false
      # t.string :remember_token
      t.integer :operation_flag
      t.integer :permission_level
      t.timestamps
    end
  end
end
