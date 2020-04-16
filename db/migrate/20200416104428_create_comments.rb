class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
