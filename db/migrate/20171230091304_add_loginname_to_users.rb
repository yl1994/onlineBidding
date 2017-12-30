class AddLoginnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :loginname, :string, comment: "登录名"
  end
end
