class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pd_name,        :limit => 50,  :null => false,  :default => ''
      t.string :pd_description
      t.decimal :pd_price,      :precision => 5, :scale => 2
      t.string :pd_picture
      t.integer :pd_qty
      t.timestamp :pd_date
      t.timestamp :pd_last_update

      t.timestamps
    end
  end
end
