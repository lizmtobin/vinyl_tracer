class AddCommentToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :comment, :text
  end
end
