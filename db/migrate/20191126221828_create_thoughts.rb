class CreateThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :thoughts do |t|
      t.string :message
      t.string :author
      t.timestamps
    end
  end
end
