class Todo < ActiveRecord::Base
  attr_accessible :content, :priority, :user_id
  validates :content, :priotiry, presence: true
  validates :priotity, numericality:  { integer:  true, greater_than: 0, less_than: 6 }

  belongs_to :user

  def priority_name
    I18n.t("activerecord.attributes.todo.priority_names")[self.priority] 
  end

end
