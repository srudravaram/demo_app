class CreateMicrosofts < ActiveRecord::Migration
  def change
    create_table :microsofts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
