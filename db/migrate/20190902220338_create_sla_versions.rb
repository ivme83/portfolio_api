class CreateSlaVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :sla_versions do |t|
      t.string :version
      t.text :text
      t.string :url

      t.timestamps
    end
  end
end
