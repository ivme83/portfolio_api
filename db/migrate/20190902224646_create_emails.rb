class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :email_from
      t.string :email_to
      t.string :email_subject
      t.text :email_content

      t.timestamps
    end
  end
end
