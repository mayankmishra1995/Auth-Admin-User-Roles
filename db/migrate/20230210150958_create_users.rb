class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company_name
      t.string :company_address

      t.timestamps
    end
  end
end
