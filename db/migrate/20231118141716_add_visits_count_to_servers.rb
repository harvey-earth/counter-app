class AddVisitsCountToServers < ActiveRecord::Migration[7.1]
  def change
    add_column :servers, :visits_count, :integer, null: false, default: 0
  end
end
