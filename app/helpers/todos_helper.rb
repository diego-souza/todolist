module TodosHelper
  def priority_name_options_for(todo)
    if todo.new_record?
      (Todo::PRIORITIES - [Todo::DONE]).map {|i| [t("activerecord.attributes.todo.priority_names")[i], i]}
    else
      (Todo::PRIORITIES).map {|i| [t("activerecord.attributes.todo.priority_names")[i], i]}
    end
  end

  # for some reason the collection expected by best_in_place
  # has a diferent order than form_for#select
  def priority_name_options_for_best_in_place
    (Todo::PRIORITIES).map {|i| [i, t("activerecord.attributes.todo.priority_names")[i]]}
  end
end
