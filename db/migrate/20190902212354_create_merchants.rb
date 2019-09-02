class CreateMerchants < ActiveRecord::Migration[5.2]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :website
      t.string :merchant_id
      t.string :merchant_id_test
      t.string :platform
      t.string :portal_status
      t.string :surchx_status

      t.timestamps
    end
  end
end
