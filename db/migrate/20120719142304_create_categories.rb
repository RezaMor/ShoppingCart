class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_name,        :limit => 50,  :null => false,  :default => ''
      t.string :cat_description
      t.string :cat_image

      t.timestamps
    end
  end
end
