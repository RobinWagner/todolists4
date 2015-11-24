module TodoListsHelper
  private
  def set_todo_list
    @todo_item = @todo_list.todo_items.find(params[:id])
  end
end
