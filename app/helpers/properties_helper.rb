module PropertiesHelper
  def button_name
    if action_name == "new" || action_name == "create"
      "登録する"
    elsif action_name == "edit" || action_name == "update"
      "更新する"
    end
  end
end