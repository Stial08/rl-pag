class AddPostsFields < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to  :user
      t.text        :name
      t.text        :content
      t.boolean     :aprooved, default: false
      t.integer     :comments
      t.timestamps
    end
  end
end
