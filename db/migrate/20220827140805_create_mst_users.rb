class CreateMstUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :mst_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_superuser

      t.timestamps
    end
  end
end
