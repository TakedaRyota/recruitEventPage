class CreateMstUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :mst_users do |t|
      t.string :name
      t.string :email
      t.binary :password

      t.timestamps
    end
  end
end
