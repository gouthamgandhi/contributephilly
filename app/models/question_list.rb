class QuestionList < ActiveRecord::Base
  attr_accessible :for, :free_text, :kind, :purpose, :question
end
