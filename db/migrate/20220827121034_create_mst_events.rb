class CreateMstEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :mst_events do |t|
      t.string :title
      t.date :date
      t.string :place
      t.string :working_time
      t.integer :member_num
      t.integer :current_num

      t.timestamps
    end
  end
end
