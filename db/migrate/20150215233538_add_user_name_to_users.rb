class AddUserNameToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :user_name, null: false, default: ""
      t.string :display_name
    end

    add_index :users, :user_name, unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
 
end
