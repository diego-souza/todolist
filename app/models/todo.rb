class Todo < ActiveRecord::Base
  attr_accessible :content, :priority, :user_id
  validates :content, :priority, presence: true
  validates :priority, numericality:  { integer:  true, less_than: 6 }
  validates :priority, numericality:  { greater_than: 0 }, on: :create
  validates :priority, numericality:  { equal_or_greater_than: 0 }, on: :update

  belongs_to :user

  def priority_name
    I18n.t("activerecord.attributes.todo.priority_names")[self.priority] 
  end

end
