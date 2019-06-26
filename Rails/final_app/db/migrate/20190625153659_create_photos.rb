class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :titile
      t.string :content

      t.timestamps
    end
  end
end
