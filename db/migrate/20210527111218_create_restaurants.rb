class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string  :restaurant,      null: false, default: ""
      t.integer :time_zone_id,            null: false
      t.integer :category_id,             null: false
      t.integer :close_time_id,           null: false
      t.text    :gaibu_net         
      t.text    :memo
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
