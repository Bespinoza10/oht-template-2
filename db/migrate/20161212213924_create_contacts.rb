class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_title
      t.string :contact_subtitle

      t.timestamps null: false
    end
  end
end
