class ListarController < ApplicationController
  def index 
    @buscar = params[:status] 
    @tarefas = Tarefa.find_by_sql("SELECT * FROM tarefas WHERE status = '#{@buscar}'")
    if @buscar == ''
      redirect_to status_index_path
    
    end
  end

end
