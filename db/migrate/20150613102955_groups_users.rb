class GroupsUsers < ActiveRecord::Migration
  def change
    create_join_table :users, :groups
  end
end
