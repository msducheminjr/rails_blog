class AddUserRefToArticles < ActiveRecord::Migration
  def self.up    
      add_reference :articles, :user, index: true
      add_foreign_key :articles, :users
  end
 
  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.    
    remove_reference :articles, :user
    #remove_foreign_key :articles, :users
  end

end
