class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :name
      t.string :phone
      t.string :email
      t.string :body 

      t.timestamps null: false
    end
  end
end
