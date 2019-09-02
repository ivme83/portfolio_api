class CreateAcceptedSlas < ActiveRecord::Migration[5.2]
  def change
    create_table :accepted_slas do |t|
      t.belongs_to :merchants
      t.belongs_to :sla_versions

      t.timestamps
    end

    
  end
end
