class ChangeColumnNameQuestionDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :questions, :question, :description
  end
end
