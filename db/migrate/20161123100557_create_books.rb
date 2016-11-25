class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.text :image
      t.text :bookpdf

      t.timestamps
    end
  end
end
