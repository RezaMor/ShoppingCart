class CreateCategoriesProducts < ActiveRecord::Migration
  def up
    create_table :categories_products, :id => false do |t|
      t.references :category
      t.references :product
    end
  end

  def down
    drop_table :categories_products
  end
end
