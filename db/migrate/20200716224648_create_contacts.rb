class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :topic, default: 0
      t.text :message

      t.timestamps
    end
  end
end
