class CreateRoleUsers < ActiveRecord::Migration
  def change
    create_table :role_users do |t|
      t.references :user, index: true
      t.references :role, index: true
      t.timestamps
    end
  end
end
