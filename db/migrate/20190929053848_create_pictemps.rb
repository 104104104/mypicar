class CreatePictemps < ActiveRecord::Migration[5.2]
  def change
    create_table :pictemps do |t|
      t.string :picture

      t.timestamps
    end
  end
end
