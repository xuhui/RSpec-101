class AddUserIdToCourse < ActiveRecord::Migration[5.0]
  def change
    change_column :courses, :user_id, :integer
  end
end
