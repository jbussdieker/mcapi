class CreateRpcResults < ActiveRecord::Migration
  def change
    create_table :rpc_results do |t|
      t.integer :rpc_id
      t.string :sender
      t.integer :statuscode
      t.string :statusmsg
      t.text :data

      t.timestamps null: false
    end
  end
end
