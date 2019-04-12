class CreateNotems < ActiveRecord::Migration[5.2]
  def change
    create_table :notems do |t|
      t.string :title
      t.text :description
      t.string :importance

      t.timestamps
    end
  end
end
