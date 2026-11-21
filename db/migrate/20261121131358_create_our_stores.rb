class CreateOurStores < ActiveRecord::Migration[8.1]
  def change
    create_table :our_stores do |t|
      t.string :name

      t.timestamps
    end
  end
end
