class AddColumnsToMerchants < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    add_column :merchants, :test_token_arr, :string, array: true, default: []
    add_column :merchants, :prod_token_arr, :string, array: true, default: []
    add_column :merchants, :mailing_address, :hstore
    add_column :merchants, :processors, :hstore
  end
end