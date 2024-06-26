class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.datetime :published_at
      t.string :status

      t.timestamps
    end
  end
end
