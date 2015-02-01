class CreateRpcs < ActiveRecord::Migration
  def change
    create_table :rpcs do |t|
      t.string :agent
      t.string :action
      t.integer :timeout
      t.integer :discovery_timeout

      t.timestamps null: false
    end
  end
end
