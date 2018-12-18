class AddPostHourRequestToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :overtime_request, :decimal
  end
end
