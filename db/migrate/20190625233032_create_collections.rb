class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name

      t.timestamps
    end
    add_column :items, :collection_id, :integer

    c = Collection.create(name: "Default Collection")
    c.items << Item.all
  end
end
