class CreateJoinTableBookLend < ActiveRecord::Migration[5.0]
  def change
    create_join_table :books, :lends do |t|
      # t.index [:book_id, :lend_id]
      # t.index [:lend_id, :book_id]
    end
  end
end
