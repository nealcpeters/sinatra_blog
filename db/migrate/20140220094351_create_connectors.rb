class CreateConnectors < ActiveRecord::Migration
  def change
    create_table :connectors do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
