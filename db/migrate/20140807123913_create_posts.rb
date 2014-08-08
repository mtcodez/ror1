class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :author
    	t.string :contents

      t.timestamps
    end
  end
end
