class CreateServers < ActiveRecord::Migration[7.1]
  def change
    create_table :servers do |t|
      t.string :name

      t.timestamps
    end
    add_index :servers, :name
  end
end
