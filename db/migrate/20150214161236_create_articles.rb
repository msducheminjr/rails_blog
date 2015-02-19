class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title, index: true, limit: 255
      t.text :text
      #t.belongs_to :user_id
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :articles
  end

end
