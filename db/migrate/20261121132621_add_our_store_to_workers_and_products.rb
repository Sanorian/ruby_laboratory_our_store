class AddOurStoreToWorkersAndProducts < ActiveRecord::Migration[8.1]
  def change
    add_reference :workers, :our_store, foreign_key: true
    add_reference :products, :our_store, foreign_key: true
  end
end
