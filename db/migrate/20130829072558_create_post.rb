class CreatePost < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :content
  	end
  end
end
