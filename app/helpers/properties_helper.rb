module PropertiesHelper
  def button_name
    if action_name == "new" || action_name == "create"
      "登録する"
    elsif action_name == "edit"
      "更新する"
    end
  end
end