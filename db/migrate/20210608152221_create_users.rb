class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email,  null: false, default: ""
      t.string :password, null: false, default: ""
      t.string :password_confirmation, null: false, default: ""
      t.boolean :admin, default: false
      t.boolean :editor, default: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.timestamps
    end
  end
end
