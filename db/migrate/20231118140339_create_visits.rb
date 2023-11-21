class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.datetime :timestamp
      t.string :requestip
      t.belongs_to :server, null: false, foreign_key: true

      t.timestamps
    end
  end
end
