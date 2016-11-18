class AddUserIdToCats < ActiveRecord::Migration[5.0]
  def change
  	#          table, column,   datatype
    add_column :cats, :user_id, :integer
  end
end
