class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :company_id
      t.string :employee_id
      t.string :email
      t.string :password
      t.string :password_digest
      t.string   :avatar_file_name
      t.string   :avatar_content_type
      t.integer  :avatar_file_size
      t.datetime :avatar_updated_at
      t.timestamps null: false
    end
  end
end
