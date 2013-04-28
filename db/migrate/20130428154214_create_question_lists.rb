class CreateQuestionLists < ActiveRecord::Migration
  def change
    create_table :question_lists do |t|
      t.text :question
      t.text :for
      t.text :purpose
      t.text :kind
      t.text :free_text

      t.timestamps
    end
  end
end
