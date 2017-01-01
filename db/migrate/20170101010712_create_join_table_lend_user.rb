class CreateJoinTableLendUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :lends, :users do |t|
      # t.index [:lend_id, :user_id]
      # t.index [:user_id, :lend_id]
    end
  end
end
